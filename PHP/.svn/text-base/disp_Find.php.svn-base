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

//initialize
$Abort = false;

$SelectList = 
//"studcrse.STUDCRSKEY as 'Status ID', " .
"country.COUNTRYNAM as 'Country', " .
//"country.CTRYABBR, " .
"studcrse.APLICANTID as 'Applicant ID', " .
//"students.HONORIFIC as 'Prefix', " .
"students.LASTNAME as 'Last', " .
"students.FIRSTNAME as 'First', " .
"students.DOB as 'D.O.B.', " .
//"courses.ORIENTID as 'OrientationID', " .
"orient.FROM as 'Orientation Start', " .
//"orient.TO as 'Orientation End', " .
//"studcrse.CourseID as 'Course ID', " .
"courses.COURSENUM as 'Course Num', " .
"courses.CRSETITLE1 as 'Title', " .
"courses.CRSETITLE2 as 'Title 2', " .
"courses.TRAINFROM as 'Start Date' " //.
//"orient.YEAR"
;

$FromList = 
"studcrse " .
"INNER JOIN courses on studcrse.COURSEID = courses.COURSEKEY " .
"INNER JOIN students on studcrse.APLICANTID = students.APLICANKEY " .
"INNER JOIN orient on courses.ORIENTID = orient.ORIENTKEY " .
"INNER JOIN country on studcrse.COUNTRYID = country.COUNTRYKEY "
;

CheckForConstraint($WhereList, 'orient.YEAR', getWithKeyCheck($app->state_array, 'frmYear')) ;
CheckForConstraint_Date($WhereList, 'orient.FROM', getWithKeyCheck($app->state_array, 'frmOrientDate') ); 

//CheckForConstraint($WhereList, 'studcrse.STUDCRSKEY', getWithKeyCheck($app->state_array, 'frmStudCrseID') );

CheckForConstraint($WhereList, 'courses.COURSEKEY', getWithKeyCheck($app->state_array, 'frmCourseID') );
//CheckForConstraint($WhereList, 'courses.ORIENTID', getWithKeyCheck($app->state_array, 'frmOrientID') );
CheckForConstraint($WhereList, 'courses.COURSENUM', getWithKeyCheck($app->state_array, 'frmCourseNum') ); 
CheckForConstraint_2Fields($WhereList, 'courses.CRSETITLE1', 'courses.CRSETITLE2', getWithKeyCheck($app->state_array, 'frmCourseTitle') );
CheckForConstraint_Date($WhereList, 'courses.TRAINFROM', getWithKeyCheck($app->state_array, 'frmCourseStart') );

CheckForConstraint($WhereList, 'students.APLICANKEY', getWithKeyCheck($app->state_array, 'frmApplicID') );
CheckForConstraint_Date($WhereList, 'students.DOB', getWithKeyCheck($app->state_array, 'frmDOB') );
if ( getWithKeyCheck($app->state_array, 'frmLName') != '' xor getWithKeyCheck($app->state_array, 'frmFName') != '') {
	CheckForConstraint_2Fields($WhereList, 'students.LASTNAME', 'students.FIRSTNAME', getWithKeyCheck($app->state_array, 'frmLName') );
	CheckForConstraint_2Fields($WhereList, 'students.FIRSTNAME', 'students.LASTNAME', getWithKeyCheck($app->state_array, 'frmFName') );
} else
{
	CheckForConstraint($WhereList, 'students.LASTNAME', getWithKeyCheck($app->state_array, 'frmLName') );
	CheckForConstraint($WhereList, 'students.FIRSTNAME', getWithKeyCheck($app->state_array, 'frmFName') );
}
CheckForConstraint($WhereList, 'country.CTRYABBR', getWithKeyCheck($app->state_array, 'frmCtryAbbr') );
CheckForConstraint($WhereList, 'country.COUNTRYNAM', getWithKeyCheck($app->state_array, 'frmCtryName') );

debug('where', $WhereList);

$OrderBy = 
'country.CTRYABBR ASC, students.LASTNAME ASC '
;

$sql = BuildSQL($SelectList, $FromList, $WhereList, $OrderBy);

debug('sql', $sql);
$rs = new OdbcRecordSet();
$rs->SetDataConnection($app->state_array['db']);
$rs->SetSQL($sql);

if ($WhereList == '')
{
	$Abort = true;
}

($Abort != true) ? $rs->Populate() : '';

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
		$data[$i]['d.o.b.'] = Linkify(SELF, 'frmDOB', $data[$i]['d.o.b.']);
		$data[$i]['orientation start'] = Linkify(SELF, 'frmOrientDate', $data[$i]['orientation start']);
		$data[$i]['course num'] = Linkify(SELF, 'frmCourseNum', $data[$i]['course num']);
		$data[$i]['title'] = Linkify(SELF, 'frmCourseTitle', $data[$i]['title']);
		$data[$i]['title 2'] = Linkify(SELF, 'frmCourseTitle', $data[$i]['title 2']);
		$data[$i]['start date'] = Linkify(SELF, 'frmCourseStart', $data[$i]['start date']);
		$data[$i]['applicant id'] = Linkify(SELF, 'frmApplicID', $data[$i]['applicant id']);
		//$data[$i]['year'] = Linkify(SELF, 'frmYear', $data[$i]['year']);
	}
}

echo CommonPageHead();
?>
<DIV name="Display" class="DisplayPanel">
<?PHP echo NavigationLinks(); ?>
<SPAN class="PageTitle">Narrow Your Search</SPAN><BR />
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