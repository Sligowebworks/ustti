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