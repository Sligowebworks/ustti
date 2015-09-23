<?php
/*
 * Created on Mar 6, 20062:49:47 AM
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * project_name
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * COPYRIGHT 2006
 * Sligo Computer Services Programers' Co-op
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 */
?>
<?php

require ("app_setup.php");

//initialize
$Abort = false;

$SelectList = 
"country.COUNTRYNAM as 'Country', " .
"students.PNG, " .
"students.SEX as 'Gender', " .
"students.HONORIFIC as 'hon.', " .
"students.FIRSTNAME as 'First', " .
"students.MIDDLENAME as 'Middle', " .
"students.LASTNAME as 'Last', " .
"students.SUFFIX as 'suf.', " .
"students.DOB as 'D.O.B.', " .
"students.BUSPHONE, " .
"students.HOMEPHONE, " .
"students.FAX, " .
"students.TELEX, " .
"students.BUSEMAIL as 'W. Email', " .
"students.HOMEEMAIL as 'H. email', " .
"students.ADDRESS1, " .
"students.ADDRESS2, " .
"students.CITY, " .
"students.ORG as 'Organization', " .
"students.ORG2 as 'Organization 2', " .
"students.TITLE, " .
"students.SUPERNAME as 'Supervisor', " .
"students.SUPERTITLE as 'Sup. Title', " .
"students.CATALOGUE, " .
"students.HOMEADDR1, " . 
"students.HOMEADDR2, " .
"students.HOMECITY " 
;

$FromList = 
"students " .
"INNER JOIN studcrse on studcrse.APLICANTID = students.APLICANKEY " .
"INNER JOIN courses on studcrse.COURSEID = courses.COURSEKEY " .
"INNER JOIN orient on courses.ORIENTID = orient.ORIENTKEY " .
"INNER JOIN country on students.COUNTRYID = country.COUNTRYKEY "
;

CheckForConstraint($WhereList, 'orient.YEAR', getWithKeyCheck($app->state_array, 'frmYear')) ;
CheckForConstraint_Date($WhereList, 'orient.FROM', getWithKeyCheck($app->state_array, 'frmOrientDate') ); 

CheckForConstraint($WhereList, 'studcrse.STUDCRSKEY', getWithKeyCheck($app->state_array, 'frmStudCrseID') );

CheckForConstraint($WhereList, 'courses.COURSEKEY', getWithKeyCheck($app->state_array, 'frmCourseID') );
CheckForConstraint($WhereList, 'courses.ORIENTID', getWithKeyCheck($app->state_array, 'frmOrientID') );
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
'country.COUNTRYNAM ASC, students.LASTNAME ASC '
;

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
		$data[$i]['last'] = Linkify(SELF, 'frmLName', $data[$i]['last']);
		$data[$i]['first'] = Linkify(SELF, 'frmFName', $data[$i]['first']);
		$data[$i]['d.o.b.'] = Linkify(SELF, 'frmDOB', $data[$i]['d.o.b.']);
		//$data[$i]['id'] = Linkify(SELF, 'frmApplicID', $data[$i]['id']);
		$data[$i]['w. email'] = Linkify_MailTo($data[$i]['w. email']);
		$data[$i]['h. email'] = Linkify_MailTo($data[$i]['h. email']);
		$data[$i]['png'] = ($data[$i]['png']) ? 'Yes' : 'No';
	}
}
echo CommonPageHead();
?>
<DIV name="Display" class="DisplayPanel">
<?PHP echo NavigationLinks(); ?>
<SPAN class="PageTitle">Student Info, Extended</SPAN><BR />
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