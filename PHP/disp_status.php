<?php
/*
 * Created on Feb 6, 20064:23:11 PM
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * USTTI Ad Hoc Search
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * COPYRIGHT 2006
 * Sligo Computer Services Programers' Co-op
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 */

require ("app_setup.php");

$Abort = false;

$SelectList = 
//"studcrse.STUDCRSKEY as 'Status ID', " .
"country.COUNTRYNAM as 'Country', " .
"studcrse.APLICANTID as 'Applicant ID', " .
"studcrse.ACCEPTED, " .
"studcrse.CONFIRMED, " .
"studcrse.PARTICIPAT, " .
//"studcrse.FAXSENT, " .
//"studcrse.PREFERENCE, " .
//"studcrse.HOTEL, " .
//"country.CTRYABBR, " .
"students.HONORIFIC as 'Prefix', " .
"students.LASTNAME as 'Last', " .
"students.FIRSTNAME as 'First', " .
"students.SUFFIX as 'Suffix', " .
//"studcrse.CourseID as 'Course ID', " .
"courses.COURSENUM as 'Course Num', " .
"courses.CRSETITLE1 as 'Title', " .
"courses.CRSETITLE2 as 'Title 2', " .
"studcrse.YEAR "
;

$FromList = 
"studcrse " .
"INNER JOIN courses on studcrse.COURSEID = courses.COURSEKEY " .
"INNER JOIN students on studcrse.APLICANTID = students.APLICANKEY " .
"INNER JOIN country on studcrse.COUNTRYID = country.COUNTRYKEY "
;

CheckForConstraint($WhereList, 'students.APLICANKEY', getWithKeyCheck($app->state_array, 'frmApplicID') );
CheckForConstraint($WhereList, 'studcrse.STUDCRSKEY', getWithKeyCheck($app->state_array, 'frmStudCrseID') );

CheckForConstraint($WhereList, 'courses.COURSEKEY', getWithKeyCheck($app->state_array, 'frmCourseID') );
CheckForConstraint($WhereList, 'courses.COURSENUM', getWithKeyCheck($app->state_array, 'frmCourseNum') ); 
CheckForConstraint($WhereList, 'courses.ORIENTID', getWithKeyCheck($app->state_array, 'frmOrientID') );
CheckForConstraint_Date($WhereList, 'courses.TRAINFROM', getWithKeyCheck($app->state_array, 'frmCourseStart') );
CheckForConstraint_2Fields($WhereList, 'courses.CRSETITLE1', 'courses.CRSETITLE2', getWithKeyCheck($app->state_array, 'frmCourseTitle') );

if ( getWithKeyCheck($app->state_array, 'frmLName') != '' xor getWithKeyCheck($app->state_array, 'frmFName') != '') {
	CheckForConstraint_2Fields($WhereList, 'students.LASTNAME', 'students.FIRSTNAME', getWithKeyCheck($app->state_array, 'frmLName') );
	CheckForConstraint_2Fields($WhereList, 'students.FIRSTNAME', 'students.LASTNAME', getWithKeyCheck($app->state_array, 'frmFName') );
} else
{
	CheckForConstraint($WhereList, 'students.LASTNAME', getWithKeyCheck($app->state_array, 'frmLName') );
	CheckForConstraint($WhereList, 'students.FIRSTNAME', getWithKeyCheck($app->state_array, 'frmFName') );
}
CheckForConstraint_Date($WhereList, 'students.DOB', getWithKeyCheck($app->state_array, 'frmDOB') );

CheckForConstraint($WhereList, 'country.CTRYABBR', getWithKeyCheck($app->state_array, 'frmCtryAbbr') );
CheckForConstraint($WhereList, 'country.COUNTRYNAM', getWithKeyCheck($app->state_array, 'frmCtryName') );


$OrderBy = 'country.CTRYABBR ASC, students.LASTNAME ASC';

$sql = BuildSQL($SelectList, $FromList, $WhereList, $OrderBy);

debug('sql', $sql);
$rs = new OdbcRecordSet();
$rs->SetDataConnection($app->state_array['db']);
$rs->SetSQL($sql);
$rs->Populate();

if (is_array($rs->arr_rows)) 
{
	$data = $rs->arr_rows;
	if (count($data) > 1000)
	{
		$Abort = true;
		$msg = "Result Too Large. \n " . count($data) . " records returned. \n " .
				"Go back and try narrowing your search.";
	}
} else
{
	$Abort = true;
	$msg = "No Result Found. \n" .
			"Please Play Again.";
}

if (!$Abort)
{
	for ($i = 0 ; $i < count($data); $i++)
	{
		$data[$i]['country'] = Linkify(SELF, 'frmCtryName', $data[$i]['country']);
		//$data[$i]['ctryabbr'] = Linkify(SELF, 'frmCtryAbbr', $data[$i]['ctryabbr']);
		$data[$i]['last'] = Linkify(SELF, 'frmLName', $data[$i]['last']);
		$data[$i]['first'] = Linkify(SELF, 'frmFName', $data[$i]['first']);
		$data[$i]['course num'] = Linkify(SELF, 'frmCourseNum', $data[$i]['course num']);
		$data[$i]['title'] = Linkify(SELF, 'frmCourseTitle', $data[$i]['title']);
		$data[$i]['title 2'] = Linkify(SELF, 'frmCourseTitle', $data[$i]['title 2']);
		$data[$i]['applicant id'] = Linkify(SELF, 'frmApplicID', $data[$i]['applicant id']);
		$data[$i]['year'] = Linkify(SELF, 'frmYear', $data[$i]['year']);
		$data[$i]['accepted'] = ($data[$i]['accepted']) ? 'Yes' : 'No';
		$data[$i]['confirmed'] = ($data[$i]['confirmed']) ? 'Yes' : 'No';
		$data[$i]['participat'] = ($data[$i]['participat']) ? 'Yes' : 'No';
	}
}

echo CommonPageHead();
?>
	<DIV name="Display" class="DisplayPanel">
	<?PHP echo NavigationLinks(); ?>
	<SPAN class="PageTitle">Application Status</SPAN><BR />
		<?PHP
		if (!$Abort)
{
	CSSTable($data, 
			array('Cell' => 'cell', 
				'Row' => 'row', 
				'TH' => 'TableHeader'
				)
			);
} else
{
	disp_error($msg);
}
		?>
	</DIV>

</BODY>
</HTML>
<?PHP
unset($rs);
?>