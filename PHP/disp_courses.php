<?php
/*
 * Created on Feb 20, 20069:23:42 PM
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

/*
 * COURSENUM
 * CRSETITLE1
 * CRSETITLE2
 * LOCATION
 * COORDINATR
 * TRAINFROM
 * TRAINTO
 * COMMENTS
 * SLOTS
 * ORIENTID
 * COURSEKEY
 * PRISPONSID
 * MORESPONS
 * COURSEYEAR
 */
 
 $SelectList = 
//"courses.COURSEKEY as 'Course ID', " .
"courses.COURSENUM as 'Course Num', " .
"courses.CRSETITLE1 as 'Title', " .
"courses.CRSETITLE2 as 'Title 2', " .
"courses.TRAINFROM as 'Start Date', " .
"courses.TRAINTO as 'End Date', " .
"courses.LOCATION as 'Location', " .
"courses.COORDINATR as 'Coordinator', " .
"courses.COURSEYEAR as 'Year', " .
"orient.FROM as 'Orientation Start', " .
"orient.TO as 'Orientation End'" 
;

$FromList = 
"courses " .
"INNER JOIN orient on courses.ORIENTID = orient.ORIENTKEY "
;
 
 CheckForConstraint($WhereList, 'courses.COURSEYEAR', $app->state_array['frmYear'] );
 //CheckForConstraint($WhereList, 'courses.COURSEKEY', $app->state_array['frmCourseID'] );
 CheckForConstraint($WhereList, 'courses.COURSENUM', $app->state_array['frmCourseNum']);
 CheckForConstraint_2Fields($WhereList, 'courses.CRSETITLE1', 'courses.CRSETITLE2', $app->state_array['frmCourseTitle'] );
 CheckForConstraint($WhereList, 'courses.TRAINFROM', $app->state_array['frmCourseStart'] );
 CheckForConstraint_Date($WhereList, 'orient.FROM', $app->state_array['frmOrientDate'] );
 
 debug('where', $WhereList);
 
 $OrderBy = 
' courses.COURSENUM ASC, courses.TRAINFROM DESC'
;

$sql = "SELECT $SelectList FROM $FromList WHERE $WhereList ORDER BY $OrderBy;";
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
		$data[$i]['course num'] = Linkify(SELF, 'frmCourseNum', $data[$i]['course num']);
		$data[$i]['title'] = Linkify(SELF, 'frmCourseTitle', $data[$i]['title']);
		$data[$i]['title 2'] = Linkify(SELF, 'frmCourseTitle', $data[$i]['title 2']);
		$data[$i]['start date'] = Linkify(SELF, 'frmCourseStart', $data[$i]['start date']);
		$data[$i]['year'] = Linkify(SELF, 'frmYear', $data[$i]['year']);
		$data[$i]['orientation start'] = Linkify(SELF, 'frmOrientDate', $data[$i]['orientation start']);
		
	}
}

echo CommonPageHead();
?>
<DIV name="Display" class="DisplayPanel">
<?PHP echo NavigationLinks(); ?>
<SPAN class="PageTitle">Courses</SPAN><BR />
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