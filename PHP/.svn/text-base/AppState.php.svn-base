<?php
/*
 * Created on Feb 2, 2006 9:20:41 PM
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * USTTI Search
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * COPYRIGHT 2005
 * Sligo Computer Services Programmers' Co-op
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 */
 /*
  * Manages the Application state (within a session)
  * 
  * Causes GET and POST to be stored in an array stored in the $_SESSION
  * thereby enabling updating of application vars by either means.
  * also creates potential for name collisions
  * 
  */
 class AppState 
 {
 	private $page_name;
 	public $state_array;
 	
 	public function Initialize($ConnStr)
 	{
 		global $_SESSION;
		
 		if (isset($_SESSION['AppState']) == false)  
 		{	//set session defaults here
 			$_SESSION['AppState'] = array();
 			
		}
		
		$_SESSION['AppState']['db'] = odbc_pconnect($ConnStr, '', '');
		
		$this->state_array = & $_SESSION['AppState'];
 		
 		$this->state_array['PageName'] = 
 			substr( $_SERVER['PHP_SELF'], 
 				1 + strrpos($_SERVER['PHP_SELF'], '/'), 
 					strrpos( $_SERVER['PHP_SELF'], '.') - strrpos($_SERVER['PHP_SELF'], '/') - 1
 					);
 		
 		// cause GET and POST to propagate to the session
 		$this->state_array = array_merge($this->state_array, $_GET, $_POST);
 		
 		foreach ($this->state_array as $key => $value)
 		{
 			if ($value == 'null')
 			{
 				$this->state_array[$key] = '';
 			}
 		}
 		
 		//debug('$_SESSION[AppState]', $_SESSION['AppState']);
 		debug('AppState', $this->state_array);
 	}
 	public function & GetAppStateArray()
 	{
 		return $this->state_array;
 	}
 }
?>
