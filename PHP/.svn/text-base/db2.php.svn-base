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
 
 $sql = (array_key_exists('query', $_POST) ) ? $_POST['query'] : 'SELECT * FROM region;';
 
 
 $rs = new OdbcRecordSet();
 //$rs->SetDataConnection('Provider=VFPODBC.1;Data Source=D:\USTTI\USTTISRVDATA;Password="";Collating Sequence=MACHINE');
 //$rs->SetDataConnection(odbc_connect('Driver={Microsoft Visual Foxpro Driver};SourceType=DBF;SourceDB=D:\USTTI\USTTISRVDATA;Exclusive=No', '', ''));
  
  $rs->SetDataConnection($app->state_array['db']);
 //$sql = "SELECT top 10 * FROM studcrse ORDER BY APLICANTID;";
 $rs->SetSQL($sql);
 $rs->Populate();
 echo '<B>Records in result: ';
 echo $rs->num_rows.'</B>';
 
// echo CSSTableRow($rs->arr_cols, 'row', 'cell');
 ?>
 
 <STYLE>
 * {
	margin:0;
	padding:0;
}
 body {
 	background-color:#DDDDDD;
 	padding:10px;
 }
 .Table {
 	margin:0px;
 	padding:3px;
 	border-width:3px;
 	border-style:ridge;
 	border-color:navy;
 }
 .Row {
 	margin:3px;
 	padding:3px;
 	
 }	
 .Cell {
 	text-align: center;
 	margin:3px;
 	padding:10px;
 	border-style:solid;
 	border-width:1px;
 	border-color:#EEEEEE;
 	
 }
 .TableHeader {
 	margin:0px;
 	padding:3px;
 	border-width:2px;
 	border-style:ridge;
 	border-color:purple;
 }
 
 </STYLE>
 
 <DIV class="Form">
<FORM action="db2.php" name="Form" method="POST">

  <textarea name="query"  rows="10" cols="60"><? echo $sql ?> </textarea>
 <input type="submit">
  
</FORM>
</DIV>
 <?php
CSSTable($rs->arr_rows, 
		array('Cell' => 'cell', 
			'Row' => 'row', 
			'TH' => 'TableHeader'
			)
		);
 ?>
 <BR />
 <H3>Tables:</H3>
 <XMP>
	FUNDTYP.DBF
	USTIDATA.DBF
	country.DBF
	courses.DBF
	funders.DBF
	funding.DBF
	fundrtyp.DBF
	orient.DBF
	region.DBF
	sponcrse.DBF
	sponsors.DBF
	studcrse.DBF
	students.DBF
	studyear.DBF
</XMP>
 <?PHP
 
 /*
 $adoConn = new COM("ADODB.Connection");
 $rs = new COM('ADODB.RecordSet');
 
 $adoConn->ConnectionString = 'Provider=VFPOLEDB.1;Data Source=D:\USTTI\USTTISRVDATA;Password="";Collating Sequence=MACHINE';
 $adoConn->Open();
 $rs->ActiveConnection = $adoConn;
 $rs->source = "SELECT top 10 * FROM studcrse ORDER BY APLICANTID;";
 $rs->LockType = 1;
 $rs->CursorType = 1;
 
 $rs->Open();
 
 //echo get_class(array('1','2','3'));
 //debug('fields', $rs->GetRows );
 
 */
 
 
?>

