<?php
/*
 * Created on Oct 10, 2005
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
 
 class OdbcRecordSet 
 {
 	private $db;
 	private $sql;
 	private $result;
 	
 	public $debug;
	public $arr_cols;
 	public $arr_rows;
 	public $num_rows;
 	public $num_cols;
 	public $sql_error;
 	public $empty_result;
 	 	
 	/* -- Methods -- */
	public  function DebugException($e, $msg = '') 
	{
	 	if ($this->debug) {
		 	echo '<pre>';
			echo "$msg\n\n" .
			'Error message: ' . $e->getMessage() . "\n" .
			'Error code: ' . $e->getCode() . "\n" .
			'File and line: ' . $e->getFile() . '(' . $e->getLine() . ") \n" .
			'Trace: ' . $e->getTraceAsString() . "\n" .
			 '</pre>';
 		}
 	}
 
	public function Populate()
 	{
 		try
 		{
 			$this->UnsafePopulate();
 		} 
 		catch (Exception $e) 
 		{
 			$this->DebugException($e, $this->sql);
 		}
 	}
 	public function UnsafePopulate()
 	{
 		try 
 		{
 			$return = $this->executeSQL($this->sql);
 			$this->ParseResult();
 		}
 		catch (Exception $e) 
 		{
 			throw $e;
 		}
 	}
 	public function ExecuteSQL ($sql) 
 	{
 		if (!isset($this->db)) 
 		{
 			$msg = "invalid database connection";
 			throw new Exception($msg);
 		}
 		if (!$sql) 
 		{
 			$msg = "no querystring supplied";
 			throw new Exception($msg);
 		}
 		try
 		{
 			$this->result = odbc_exec($this->db, $sql);
 		} 
 		catch (Exception $e)
 		{
 			$this->sql_error = true;
 			throw $e;
 		}
 		return 1;
 	}
 	private function ParseResult()
 	{	// parse the result and put into arrays for easy access
 		$arr_rows = &$this->arr_rows;
 		$arr_cols = &$this->arr_cols;
 		$result = &$this->result;
 		
 		while ($row = odbc_fetch_array($result))
 		{
 			$arr_rows[] = $row;
 		}
 		
 		if (count($arr_rows) == 0)
 		{
 			throw new Exception('empty result');
 			exit;
 		}
 		
 		//get the first row
 		foreach($arr_rows[0] as $field => $value)
 		{	//stuff field names into the columns array
 			$arr_cols[] = $field;
 		}
 		
 		$this->num_rows = count($arr_rows);
 		$this->num_cols = count($arr_cols);
 	}
 	/*-- Properties --*/
 	public function SetDataConnection ($db) 
 	{
 		$this->db = $db;
 	}
 	public function &GetDataConnection () 
 	{
 		return $this->db;
 	}
	public function SetSQL ($sql) 
	{
		$this->sql = $sql;
		$this->sql_error = false;
	}
	public function GetSQL () 
	{	
		return $this->sql;
	}
	public function __construct()
	//public function __construct(&$db = '')
	{
 		//$this->db = &$db;
 	}
 }
?>
