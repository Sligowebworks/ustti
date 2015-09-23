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
 
 
$dbConnStr = 'Driver={Microsoft Visual Foxpro Driver};SourceType=DBF;SourceDB=D:\SYS\Apps\USTTI;Exclusive=No';
$ConnStr = 'Driver={Microsoft Visual Foxpro Driver};SourceType=DBF;SourceDB=D:\USTTI\USTTISRVDATA;Exclusive=No';

require_once('OdbcRecordSet.php');
 
 $rs = new OdbcRecordSet();
// $rs->debug = true;
//WINTERMUTE:
$rs->SetDataConnection( odbc_pconnect($ConnStr, '', ''));
//WINSRV:
//  $rs->SetDataConnection(odbc_pconnect($dbConnStr, '', ''));
 
$sql = "SELECT DISTINCT trainfrom, trainto FROM courses WHERE COURSEKEY > 1798 AND trainFROM <> DATE (1900, 01,01);";
$rs->SetSQL($sql);

// define('FILE_SPEC', 'update.courses.sql' );
 define('FILE_SPEC', 'orient.csv' );
//define('FILE_SPEC', 'select.courses.sql');

 $file = fopen(FILE_SPEC, 'w');
 
 
 $rs->Populate();
 
 echo 'XX' . $rs->num_rows;
$arr =  $rs->arr_rows;

foreach ($arr as $row)
{
	$strfrom = explode('-', $row['trainfrom'
}	

 

 
// echo CSSTableRow($rs->arr_cols, 'row', 'cell');
?>

