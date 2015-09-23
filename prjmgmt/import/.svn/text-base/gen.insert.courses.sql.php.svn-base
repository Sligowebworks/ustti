<?php

// require_once('app_setup.php');
		
 define('FILE_SPEC', '2008CourseFullForImport.csv' );

 if ( !file_exists(FILE_SPEC)) exit;
 $file = fopen(FILE_SPEC, 'r');

 $keys = explode("\t", str_replace('"', '',  fgets($file)));
 //$garbage = fgets($file);
 
// echo '<PRE>';
// echo 'keys: '; 	var_dump ($keys);
 
 $crsKey = 1798;	//SELECT MAX(COURSEKEY) FROM courses;
 
//parse into array of records
 while (!feof($file))
 {
 	$strline = str_replace('\'', '\\\'', fgets($file));
 	//echo $line;
 	 if (strlen(trim($strline)) == 0 )
 	{
 		continue;
 	}

 	$arr = explode("\t", $strline);
 	//var_dump($arr);
 	
 	$line = array(); 	
	for($i = 0; $i < count($arr); $i++)
	{
		$line[trim($keys[$i])] = trim(str_replace('"', '', $arr[$i]) );
	}
	$field = $line['Title'];
	if (strlen($field) > 60)
	{
		$last = 1;
		while ($last < 59)	
		{
			$sp = strpos($field, ' ', $last);
			if ($sp=== false OR  $sp > 58) 
			{
				$sp = $last -1 ;
				$last = 60;
			} else//if ($this < 59)
			{
				$last = $sp+1;
			}
		}
		$title1 = substr($field, 0, $sp+1);
		$title2 = substr($field, $sp+1);
		//echo '#' . strlen($title1);
	}
	 else
	{
		$title1 = $field;
		$title2 = '';
	}

	$fromDate = trim($line['TrainBegin']);
	$toDate = trim($line['TrainEnd']);
	if (strstr($fromDate, 'T') === false)
	{
		$fromYear = substr($fromDate, 6, 4);
		$fromMonth = substr($fromDate, 0, 2);
		$fromDay = substr($fromDate, 3, 2);
	}
	else
	{
		$fromYear = 1900;
		$fromMonth = 1;
		$fromDay = 1;
	}
	if (strstr($toDate, 'T') === false)
	{
		$toYear = substr($toDate, 6, 4);
		$toMonth = substr($toDate, 0, 2);
		$toDay = substr($toDate, 3, 2);
	}
	else
	{
		$toYear = 1900;
		$toMonth = 1;
		$toDay = 1;
	}
	$trainFrom =  'DATE( ' . (int)$fromYear . ', ' . (int)$fromMonth . ', ' . (int)$fromDay . ')';
	$trainTo = 'DATE( ' . (int)$toYear . ', ' . (int)$toMonth . ', ' . (int)$toDay . ')';
	

			
	//$SQL[] = 'SELECT SPONSKEY, SPONSNAME FROM sponsors WHERE SPONSNAME LIKE \'%' . $line['Sponsor'] . '%\'  '	;
	//$SQL[] = 'INSERT INTO courses ( COURSENUM, 	CRSETITLE1,	CRSETITLE2,	LOCATION,	TRAINFROM,	TRAINTO,	COURSEYEAR,	' .
	//		 'COORDINATR,	COMMENTS,	SLOTS,	ORIENTID,  	PRISPONSID,	MORESPONS ) VALUES ' .
	//		" ( '{$line['Number']}', 	'$title1', 	'$title2', '" . $line['City'] . ', ' . $line['StateID'] . "', 	'{$line['TrainBegin']}', 	'{$line['TrainEnd']}',	" .
	//		" '2007',	'', '', 0, 0, 0, 0)";
	//
	$crsKey = $crsKey +1;
	$SQL[] = "INSERT INTO courses (COURSEKEY, COURSENUM, CRSETITLE1,	CRSETITLE2,	LOCATION, COORDINATR,	TRAINFROM,	TRAINTO, COURSEYEAR, COMMENTS,	SLOTS,	ORIENTID,  	PRISPONSID, MORESPONS ) VALUES ( " .$crsKey . ",  '{$line['Number']}',  '$title1', 	'$title2',	'" . $line['City'] . ', ' . $line['StateID'] . "', '', $trainTo, $trainTo, '2007', '', 	0,	0,	0,	0) " ;

 }
 
// var_dump ($SQL);
 
  #~,~`~,~`~,~`~,~`
 $strSQL = implode("; \n", $SQL) . ';';
echo($strSQL);
 #~,~`~,~`~,~`~,~`
 
// echo '</PRE>';

// ~ ~ ~
/*  $rs = new OdbcRecordSet();
  
  $rs->SetDataConnection($app->state_array['db']);
 // $rs->SetSQL($sql);
 $intReturn =  $rs->ExecuteSQL($SQL);
*/
 
?>
