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

$FormAction = 'disp_Find.php';
$ClearForm = (isset($_GET['clear'])) ? true : false;

echo CommonPageHead();

 //Form vars
getAppStateValue('frmYear', 2006);
getAppStateValue('frmApplicID', '');

getAppStateValue('frmStudCrseID', '');
//getAppStateValue('frmCourseID', '');
//getAppStateValue('frmOrientID', '');
getAppStateValue('frmOrientDate', '');
getAppStateValue('frmLName', '');
getAppStateValue('frmFName', '');
getAppStateValue('frmDOB', '');
getAppStateValue('frmCourseNum', '');
getAppStateValue('frmCourseTitle', '');
getAppStateValue('frmCourseStart', '');
getAppStateValue('frmCtryAbbr', '');
getAppStatevalue('frmCtryName', '');
?>
<DIV class="PageTitle">Start Search</DIV>
<DIV class="Form">
<FORM action="<?PHP echo $FormAction?>" name="Form" method="POST">
<TABLE cols="2" cellpadding="0" cellspacing="2" border="0" align="center">
	<TR>
	<TD class="FormLabel">Last Name </TD><TD class="InputCell"><INPUT name="frmLName" class="textinput" type="text" size="32" value="<?PHP FormValue($frmLName) ?>" /></TD>
	</TR><TR>
	<TD class="FormLabel">First Name </TD><TD class="InputCell"><INPUT name="frmFName" class="textinput" type="text" size="32" value="<?PHP FormValue($frmFName) ?>" /></TD>
	</TR><TR>
	<TD class="FormLabel">D.O.B. <em>(yyyy-mm-dd)</TD><TD class="InputCell"><INPUT name="frmDOB" class="textinput" type="text" size="8" value="<?PHP FormValue($frmDOB) ?>" /></TD>
	</TR><TR>
	<TD class="FormLabel">Applicant ID </TD><TD class="InputCell"><INPUT name="frmApplicID" class="textinput" type="text" size="4" value="<?PHP FormValue($frmApplicID) ?>" /></TD>
	</TR><TR>
	<TD class="FormLabel">Course Num </TD><TD class="InputCell"><INPUT name="frmCourseNum" class="textinput" type="text" size="8" value="<?PHP FormValue($frmCourseNum) ?>" /></TD>
	</TR><TR>
	<TD class="FormLabel">Course Title </TD><TD class="InputCell"><INPUT name="frmCourseTitle" class="textinput" type="text" size="32" value="<?PHP FormValue($frmCourseTitle) ?>" /></TD>
	</TR><TR>
	<TD class="FormLabel">Course Start Date <em>(yyyy-mm-dd)</TD><TD class="InputCell"><INPUT name="frmCourseStart" class="textinput" type="text" size="10" value="<?PHP FormValue($frmCourseStart) ?>" /></TD>
	</TR><TR>
	<TD class="FormLabel">Year</TD><TD class="InputCell"><INPUT name="frmYear" class="textinput" type="text" size="4" value="<?PHP echo $frmYear ?>" /></TD>
	</TR><TR>
	<TD class="FormLabel">Orientation Date <em>(yyyy-mm-dd)</em></TD><TD class="InputCell"><INPUT name="frmOrientDate" class="textinput" type="text" size="8" value="<?PHP FormValue($frmOrientDate) ?>" /></TD>
	</TR><TR>
	<!--TD class="FormLabel">Country Abbrev. </TD><TD class="InputCell"><INPUT name="frmCtryAbbr" class="textinput" type="text" size="8" value="<?PHP FormValue($frmCtryAbbr) ?>" /></TD>
	</TR><TR-->
	<TD class="FormLabel">Country Name </TD><TD class="InputCell"><INPUT name="frmCtryName" class="textinput" type="text" size="8" value="<?PHP FormValue($frmCtryName) ?>" /></TD>
	</TR><TR>
	<TD class="FormLabel"><INPUT name="frmSubmit" type="submit" value="Search" /> </TD><TD class="InputCell">&nbsp; &nbsp; &nbsp; &nbsp; <A href="<?PHP echo SELF ?>?clear=1">Clear Form</A></TD>
	</TR>
</TABLE>
</FORM>
</DIV><!-- /Form -->

</BODY>
</HTML>
