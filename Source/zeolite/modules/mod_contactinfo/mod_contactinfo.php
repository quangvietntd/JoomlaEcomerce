<?php
/**
* Contact Information Module 2.1
* Joomla Module
* Author: Edward Cupler
* Website: www.digitalgreys.com
* Contact: ecupler@digitalgreys.com
* @copyright Copyright (C) 2007 Digital Greys. All rights reserved.
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
* Contact Information Module is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
$db		=& JFactory::getDBO();
$contact_id = $params->get( 'contact_cid', '' );

	global $mainframe, $database, $my, $Itemid;
/*************************************************/
//Set up ordering
	$contact_array = explode(",", $contact_id);
	$contactordering = 'ORDER BY ';
	for ( $i=0; $i<sizeof($contact_array); $i++ ) {
		$contactordering .= "id=" . $contact_array[$i] . " DESC, ";  
	}  
	$contactordering = rtrim($contactordering, ', ');
/*************************************************/
	$query = "SELECT * FROM #__contact_details WHERE id IN ( $contact_id ) $contactordering";
	$db->setQuery( $query );
	$contacts = $db->loadObjectList();
	
	if ($params->get( 'layout_style', '' )=="SeperateLines") {
		$linebreak="<br />";
		$newspace="";
	} else {
		$linebreak="";
		$newspace=" ";
	}

	if ($params->get( 'separate_code', '' )=="div") {
		$separate_code="<div class=\"contact_sep\"></div>";
	} else if ($params->get( 'separate_code', '' )=="br") {
		$separate_code="<br />";
	} else if ($params->get( 'separate_code', '' )=="hr") {
		$separate_code="<hr class=\"contact_sep\" />";
	} else {
		$separate_code="";
	}

	
	$separate_num=sizeof($contacts);
	for ( $i=0; $i<sizeof($contacts); $i++ ) {
		$telephone_array=explode(" ",$contacts[$i]->telephone);
		if ($params->get( 'show_name', '' ) == 1 && $contacts[$i]->name != '') {
			if ($params->get( 'link_to', '' ) == 1) {
				$url = JURI::root() . 'index.php?option=com_contact&view=contact&id=' . $contacts[$i]->id;
				echo "<span class=\"info_name\"><a href=\"". $url . "\">" . $contacts[$i]->name . "</a></span>$linebreak$newspace\n";
			} else {
				echo "<span class=\"info_name\">" . $contacts[$i]->name . "</span>$linebreak$newspace\n";
			}
		}
		if ($params->get( 'show_alias', '' ) == 1 && $contacts[$i]->alias != '') {
			if ($params->get( 'link_to', '' ) == 1 && $params->get( 'show_name', '' ) != 1) {
				echo "<span class=\"info_name\"><a href=\"index.php?option=com_contact&task=view&id=" . $contacts[$i]->id . "\">" . $contacts[$i]->alias . "</a></span>$linebreak$newspace\n";
			} else {
				echo "<span class=\"info_alias\">" . $contacts[$i]->alias . "</span>$linebreak$newspace\n";
			}
		}
		if ($params->get( 'con_position', '' ) == 1 && $contacts[$i]->con_position != '') {
			echo "<span class=\"info_position\">".$contacts[$i]->con_position . "</span>$linebreak$newspace\n";
		}
		if ($params->get( 'show_address', '' ) == 1 && $contacts[$i]->address != '') {
			echo "<span class=\"info_address\">".$contacts[$i]->address . "</span>$linebreak$newspace\n";
		}
		if ($params->get( 'show_suburb', '' ) == 1 && $contacts[$i]->suburb != '') {
			echo "<span class=\"info_suburb\">".$contacts[$i]->suburb . "</span>, \n";
		}
		if ($params->get( 'show_state', '' ) == 1 && $contacts[$i]->state != '') {
			echo "<span class=\"info_state\">".$contacts[$i]->state . "</span> \n";
		}
		if ($params->get( 'show_postcode', '' ) == 1 && $contacts[$i]->postcode != '') {
			echo "<span class=\"info_postcode\">".$contacts[$i]->postcode . "</span>$linebreak$newspace\n";
		}
		if ($params->get( 'show_country', '' ) == 1 && $contacts[$i]->country != '') {
			echo "<span class=\"info_country\">".$contacts[$i]->country . "</span>$linebreak$newspace\n";
		}
		if ($params->get( 'show_telephone', '' ) == 1 && $contacts[$i]->telephone != "") {
			if (sizeof($telephone_array) > 1) {
				echo "<span class=\"info_telephone\">".$telephone_array[0] . " or$linebreak$newspace" .$telephone_array[1]. "</span>$linebreak$newspace\n";
			} else {
				echo "<span class=\"info_telephone\">".$telephone_array[0]. "</span>$linebreak$newspace\n";
			}
		}
		if ($params->get( 'show_mobile', '' ) == 1 && $contacts[$i]->mobile != "") {
			echo "<span class=\"info_mobile\">Mobile: " . $contacts[$i]->mobile ."</span>$linebreak$newspace\n";
		}
		if ($params->get( 'show_fax', '' ) == 1 && $contacts[$i]->fax != "") {
			echo "<span class=\"info_fax\">Fax: " . $contacts[$i]->fax ."</span>$linebreak$newspace\n";
		}
		if ($params->get( 'show_email_to', '' ) == 1 && $contacts[$i]->email_to != "") {
			if ($params->get( 'email_text' ) != '') {
				$displayed_email=JHTML::_('email.cloak', $contacts[$i]->email_to, true, $params->get( 'email_text'), false);// 
				//$displayed_email=emailcloaking( $contacts[$i]->email_to, true, $params->get( 'email_text' ), false );
			} else {
				$displayed_email=JHTML::_('email.cloak', $contacts[$i]->email_to, true );
				//$displayed_email=emailcloaking( $contacts[$i]->email_to, true );
			}
			echo "<span class=\"info_email\">" . $displayed_email . "</span>$linebreak$newspace\n";
		}
		if ($params->get( 'show_webpage', '' ) == 1 && $contacts[$i]->webpage != "") {
			$displayAddress=str_replace("http://", "", $contacts[$i]->webpage);
			$displayAddress=str_replace("https://", "", $displayAddress);
			if ($params->get( 'link_website', '' ) == 1) {
				if ($params->get( 'website_target', '' ) == 1) {
					$target=' target="new"';
				}
				if ( eregi("http://", $contacts[$i]->webpage) || eregi("https://", $contacts[$i]->webpage) ) {
					echo "<span class=\"info_webpage\"><a href=\"".$contacts[$i]->webpage ."\"". $target .">".$displayAddress ."</a></span>$linebreak$newspace\n";
				} else {
					echo "<span class=\"info_webpage\"><a href=\"http://".$contacts[$i]->webpage ."\"". $target .">".$displayAddress ."</a></span>$linebreak$newspace\n";
				}
			} else {
				echo "<span class=\"info_webpage\">".$contacts[$i]->webpage ."</span>$linebreak$newspace\n";
			}
		}
		if ($params->get( 'show_misc', '' ) == 1 && $contacts[$i]->misc != "") {
			echo "<span class=\"info_misc\">".$contacts[$i]->misc ."</span>$linebreak$newspace\n";
		}
		if ($separate_num > 1) {
			echo $separate_code."\n";
		}
		$separate_num=$separate_num-1;
	}
?>
