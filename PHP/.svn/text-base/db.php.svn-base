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
 
 $connstr = 'Provider=VFPOLEDB.1;Data Source=D:\USTTI\Data\DATA;Password="";Collating Sequence=MACHINE';
 
 $Tables = array();
 $Tables[] = 'D:\USTTI\USTTISRVDATA\FUNDTYP.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\USTIDATA.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\country.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\courses.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\funders.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\funding.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\fundrtyp.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\orient.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\region.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\sponcrse.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\sponsors.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\studcrse.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\students.DBF';
 $Tables[] = 'D:\USTTI\USTTISRVDATA\studyear.DBF';
 
 array_walk($Tables, 'ReadHeader');
 
  function ReadHeader($filename)
  {
 	$file = dbase_open($filename, 0);
 	$arrHeader = dbase_get_header_info($file);
	$doOnce = true;
	 
 	echo '<pre>';
 	echo "<b>File[$filename]</b>\n";
 	echo 'num fields['. dbase_numfields($file) . "]\n";
 	echo 'num records['. dbase_numrecords($file). "]\n";
 	
	foreach ($arrHeader as $index => $line) 
	{
		if ($doOnce) 
		{
			$doOnce = false;
		 	for ($i = 0; $i < count($line); $i++)
		 	{
		 		echo key($line);
		 		echo ', ';
		 		next($line);
		 	}
		 	echo "\n";
		}
		
		foreach($line as $key => $value)
		{
			echo $value;
			echo ', ';
			
		}
		echo "\n";
	}
	 echo '</pre>';
 }
?>

