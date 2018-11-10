<?php header("Content-type: text/css"); ?>
/*------------------------------------------------------------------------
# JA Zeolite for Joomla 1.5 - Version 1.0 - Licence Owner JA108425
# ------------------------------------------------------------------------
# Copyright (C) 2004-2008 J.O.O.M Solutions Co., Ltd. All Rights Reserved.
# @license - Copyrighted Commercial Software
# Author: J.O.O.M Solutions Co., Ltd
# Websites:  http://www.joomlart.com -  http://www.joomlancers.com
# This file may not be redistributed in whole or significant part.
-------------------------------------------------------------------------*/
<?php
$template_path = dirname( dirname( $_SERVER['REQUEST_URI'] ) );
?>
h1.logo a {
 	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/logo.png', sizingMethod='image');
 	background-image: none;
}

p.stickynote {
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/icon-sticky.png', sizingMethod='crop');
 	background-image: url(images/blank.gif);
	width: 89%;
}

p.download {
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/icon-download.png', sizingMethod='crop');
 	background-image: url(images/blank.gif);
	width: 89%;
}

p.error {
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/icon-error.png', sizingMethod='crop');
 	background-image: url(images/blank.gif);
	width: 80%;
}

p.message {
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/icon-info.png', sizingMethod='crop');
 	background-image: url(images/blank.gif);
	width: 80%;
}

p.tips {
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/icon-tips.png', sizingMethod='crop');
 	background-image: url(images/blank.gif);
	width: 80%;
}
