<?php
 // FUNCTIONS:
 function Linkify($page, $target, $val)
{
	$link = '<a href="%s?%s=%s">%s</a>' ;
	return sprintf($link, $page, $target, $val, $val);
}
function Linkify_MailTo($email)
{
	$link = '<a href="mailto:%s">%s</a>';
	return sprintf($link, $email, $email);
}
 function BuildSQL($SELECT, $FROM, $WHERE, $ORDERBY)
{
	$sql = "SELECT $SELECT " .
	" FROM $FROM ";
	if ($WHERE != '') $sql .= "WHERE $WHERE ";
	if ($ORDERBY != '') $sql .= " ORDER BY $ORDERBY ";
	
	return $sql . ";";
}
 function getWithKeyCheck(&$arr, $key) 
 { return ( array_key_exists($key, $arr) ) ? $arr[$key] : '' ;  }
 function NavigationLinks()
 {
 	$link = '<a href="%s" id="%s">%s</a>';
 	$str = '<DIV class="NavigationBox">';
 	
 		$item = sprintf($link, 'disp_Find.php', 'navFind', 'All');
 		WrapInCSS($item, 'NavLink', 'SPAN');
 		$str .= $item[0] . $item[1] . $item[2];
 		
 		$item = sprintf($link, 'disp_courses.php', 'navcourse', 'Courses');
 		WrapInCSS($item, 'NavLink', 'SPAN');
 		$str .= $item[0] . $item[1] . $item[2];
 		
 		$item = sprintf($link, 'disp_status.php', 'navstatus', 'Application Status');
 		WrapInCSS($item, 'NavLink', 'SPAN');
 		$str .= $item[0] . $item[1] . $item[2];
 		
 		$item = sprintf($link, 'disp_students.php', 'navstudents', 'Student Info');
 		WrapInCSS($item, 'NavLink', 'SPAN');
 		$str .= $item[0] . $item[1] . $item[2];
 		
 		$item = sprintf($link, 'disp_students_ext.php', 'navstudentsext', 'Extended Student Info');
 		WrapInCSS($item, 'NavLink', 'SPAN');
 		$str .= $item[0] . $item[1] . $item[2];
 		
 	$str .= '</DIV>';
 	return $str;
 }
 function FormValue($val)
{
	global $ClearForm;
	if (!$ClearForm) echo $val;
}
function getAppStateValue($name, $default)
{
	global $app, ${$name};
	${$name} = (isset($app->state_array[$name] )) ? $app->state_array[$name] : $default ;
}
function CheckForConstraint_Date(&$WHERE, $field, $constraint)
{
	$year = substr($constraint, 0, 4);
	$month = substr($constraint, 5, 2);
	$day = substr($constraint,8, 2);
	if ($constraint != '')
	{
		$constraint = ScrubInput(strtoupper($constraint));
		//echo $constraint;
		$WHERE .= (strlen($WHERE) > 0) ? ' AND ' : '' ;
		$WHERE .= " $field = DATE($year, $month, $day) ";
		
	}
}
 function CheckForConstraint(&$WHERE, $field, $constraint)
{
	if ($constraint != '')
	{
		$constraint = ScrubInput(strtoupper($constraint));
		//echo $constraint;
		$WHERE .= (strlen($WHERE) > 0) ? ' AND ' : '' ;
		if (strstr($field, 'ID') or strstr($field, 'KEY')) {
			$WHERE .= $field . " = " . $constraint ;
		} else
		{
			$WHERE .= 'UPPER(' . $field . ") LIKE '%" . $constraint . "%'";
		}
	}
}
function CheckForConstraint_2Fields(&$WHERE, $field1, $field2, $constraint)
{
	if ($constraint != '')
	{
		$constraint = ScrubInput(strtoupper($constraint));
		$WHERE .= (strlen($WHERE) > 0) ? ' AND ' : '' ;
		$WHERE .= '(' . 'UPPER(' . $field1 . ") LIKE '%" . $constraint . "%'" .
				' OR ' . 'UPPER(' . $field2 . ") LIKE '%" . $constraint . "%')";
		;
	}
}
function ScrubInput($input)
{
	$input = 
		str_replace('SELECT', '',
			str_replace('UPDATE', '',
				str_replace('DELETE', '',
					str_replace('INSERT', '',
						str_replace('=', '',
							str_replace('\'', '',
								str_replace('--', '',
									str_replace(';', '',
	$input
									)
								)
							)
						)
					)
				)
			)
		);
		return $input;
}
 
 function CommonPageHead()
 { 
 	global $app;
 	
 	$str = '
 	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<HEAD>
	<LINK rel="StyleSheet" href="app_style.css" type="text/css">
	<TITLE>USTTI Ad Hoc Search</TITLE>
</HEAD>

<BODY>
<DIV class="LogoBanner">' .
		'<DIV class="Logo">
			<A href="QueryForm.php" class="imgLink"><IMG src="S_USTTI.BMP"></A>' .
		'</DIV>' .
		'<DIV class="BannerTitle">Constraints</DIV>'.
		'<DIV class="Constraints">'
	;
	
	$str .= 'click to remove<BR />';
	foreach ($app->state_array as $key => $val)
	{
		if (stripos($key, 'frm') === 0 and stripos($key, 'submit') === false and $val != '')
		{
			$str .= 
				'<A href="' . SELF . '?' .
				$key . '=null" class="RemoveConstrLink">' .
				substr($key, 3). ' [' . $val .
				']</A> &nbsp;&nbsp;&nbsp;'
			;
		}
	}
	$str .= '</DIV>';
	$str .= '</DIV><BR />';

	return $str;
 }
 function disp_error($msg)
 {
 	echo '<DIV class="error"><PRE>' .
 		$msg . '</PRE></DIV>';
 }
 function CSSTable($arr, $CSS)
 {
 	/**
 	 * Second arg is an associative array with values 
 	 * for -- 'Row', 'Cell', 'TH' (Table Header).
 	 * Expects an array ($arr) of associative arrays to display.
 	 * Uses the keys of the first array to make the table header row.
 	 * Prints the table.
 	 * 
 	 * sample call:
 	  CSSTable($data, 
			array('Cell' => 'cell', 
				'Row' => 'row', 
				'TH' => 'TableHeader'
				)
			);
	 * 
 	 */
 	$header = array_keys($arr[0]);
 	CSSTableRow($header, $CSS['Row'], $CSS['TH']);
 	
 	array_walk(
 	 	$arr, 'WalkCSSTableRow', 
 	 	array( 'Row' => $CSS['Row'], 'Cell' => $CSS['Cell'] )
 	);
 	
 	$arr = array_merge($header, $arr);
 	WrapInCSS($arr, 'Table', 'TABLE');
 	
 	//debug('arr', $arr);
 	array_walk_recursive($arr, 'printf');
 }
 function CSSTableRow(&$arr, $RowCSS, $CellCSS)
 {
 	/**for an array destined to be a row
 	 * wrap each item in a tag
 	 * then wrap that result with a row tag
 	 */
 	array_walk($arr, 'WalkWrapInCSS', array($CellCSS, 'TD'));
 	
 	WrapInCSS($arr,$RowCSS, 'TR');
 	
 }
 function WrapInCSS(&$item, $class, $tag)
 {
 	/** 
 	 * wraps $item in a tag of $tag with CSS class of $class
 	 * 
 	 * array_merge is used so that this function can be used to wrap entire associative arrays.
 	 * the begining and end tags are placed in seperate array indices such that
 	 *  [0] = <tag class="class">
 	 *  [1] = $item
 	 *  [2] = </tag>
 	 */
 	 if(is_array($item) == false)
 	 {
 	 	$item = array($item);
 	 }
 	 $item = 
 		array_merge(
 			array_merge(
				array("\t<$tag class=\"$class\">\n\t\t"),
				$item
			),
			array("\n\t</$tag>\n")
		);
 }
 //~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
 /** 
  * these "Walk..." functions merely wrap other functions for
  * calling with array_walk
  */
 function WalkCSSTableRow(&$item, $key, $arr)
 {
 	$CellCSS = $arr['Cell'];
 	$RowCSS = $arr['Row'];
 	CSSTableRow($item, $RowCSS, $CellCSS);
 }
 function WalkWrapInCSS(&$item, $key, $args)
 {
 	$class = $args[0];
 	$block = $args[1];
 	WrapInCSS($item, $class, $block);
 }
//~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
 function DebugException($e, $msg = '') 
 {
 	global $debug;
 	if ($debug) {
 	//if (TRUE) {
	 	echo '<pre>';
			echo "$msg\n\n" .
			'Error message: ' . $e->getMessage() . "\n" .
			'Error code: ' . $e->getCode() . "\n" .
			'File and line: ' . $e->getFile() . '(' . $e->getLine() . ") \n" .
			'Trace: ' . $e->getTraceAsString() . "\n" .
			 '</pre>';
 	}
 }
//~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
  function debug($varname, $var) {
 	global $debug;	//defined in setup.php
 	if ($debug) {
 		if (is_array($var))
 		{
 			echo '<xmp>';
			echo $varname . "\n";
 			print_r($var);
 			echo '</xmp>';
		} else {
 			printf("%s: [%s]<br><br>", $varname, $var);
 		}
 	}
 }
//~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
?>