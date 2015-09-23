<?php
/*
 * Created on Feb 2, 20069:39:31 AM
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * project_name
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * COPYRIGHT 2006
 * Sligo Computer Services Programers' Co-op
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 */
 
 require_once('app_setup.php');
require_once('OdbcRecordSet.php');
 
 $rs = new OdbcRecordSet();
 $rs->debug = true;
 //$rs->SetDataConnection('Provider=VFPODBC.1;Data Source=D:\USTTI\USTTISRVDATA;Password="";Collating Sequence=MACHINE');
 //$ConnStr = 'Driver={Microsoft Visual Foxpro Driver};SourceType=DBF;SourceDB=D:\USTTI\USTTISRVDATA;Exclusive=No';
// $rs->SetDataConnection( odbc_pconnect($ConnStr, '', ''));
 
  $rs->SetDataConnection($app->state_array['db']);
 //$sql = "SELECT top 10 * FROM studcrse ORDER BY APLICANTID;";


//// Un-comment one of these definitions, but don't leave it that way to prevent accidents
// define('FILE_SPEC', 'update.courses.sql' );
// define('FILE_SPEC', 'insert.courses.2008.sql' );
 //define('FILE_SPEC', 'select.fromtodates.courses.sql' );
//define('FILE_SPEC', 'select.courses.sql');
//define('FILE_SPEC', 'insert.orients.sql');

 $file = fopen(FILE_SPEC, 'r');
 
 function x_sql_statement($rs, $sql)
 {	
 	try
 	{
		$rs->ExecuteSQL($sql);
	}
	catch (Exception $e) 
 	{
 		$rs->DebugException($e, $sql);
 	}
}

 while (!feof($file))
 {
 	$SQL = fgets($file);
 	if (strlen(trim($SQL)) > 0 )
 	{
 		x_sql_statement($rs, $SQL);
 	}
 }

 
// echo CSSTableRow($rs->arr_cols, 'row', 'cell');
?>

