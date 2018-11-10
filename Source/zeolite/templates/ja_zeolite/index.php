 <?php
/*------------------------------------------------------------------------
# JA Zeolite for Joomla 1.5 - Version 1.0 - Licence Owner JA108425
# ------------------------------------------------------------------------
# Copyright (C) 2004-2008 J.O.O.M Solutions Co., Ltd. All Rights Reserved.
# @license - Copyrighted Commercial Software
# Author: J.O.O.M Solutions Co., Ltd
# Websites:  http://www.joomlart.com -  http://www.joomlancers.com
# This file may not be redistributed in whole or significant part.
-------------------------------------------------------------------------*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

include_once (dirname(__FILE__).DS.'ja_vars_1.5.php');

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>">

<head>
<jdoc:include type="head" />
<?php JHTML::_('behavior.mootools'); ?>

<link rel="stylesheet" href="<?php echo $tmpTools->baseurl(); ?>templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $tmpTools->baseurl(); ?>templates/system/css/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $tmpTools->templateurl(); ?>/css/template.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $tmpTools->templateurl(); ?>/css/typo.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $tmpTools->templateurl(); ?>/css/ja.vm.css" type="text/css" />

<script language="javascript" type="text/javascript">
	var siteurl = '<?php echo $tmpTools->baseurl();?>';
	var tmplurl = '<?php echo $tmpTools->templateurl();?>';
</script>

<script language="javascript" type="text/javascript" src="<?php echo $tmpTools->templateurl(); ?>/js/ja.script.js"></script>
<!-- js for dragdrop -->

<!-- Menu head -->
<?php if ($jamenu) $jamenu->genMenuHead(); ?>
<link href="<?php echo $tmpTools->templateurl(); ?>/css/colors/<?php echo strtolower ($tmpTools->getParam(JA_TOOL_COLOR)); ?>.css" rel="stylesheet" type="text/css" />

<!--[if lte IE 6]>
<style type="text/css">
img {border: none;}
</style>
<![endif]-->

<?php if ($tmpTools->isIE6()) { ?>
<!--[if lte IE 6]>
<link href="<?php echo $tmpTools->templateurl(); ?>/css/ie6.php" rel="stylesheet" type="text/css" />
<link href="<?php echo $tmpTools->templateurl(); ?>/css/colors/<?php echo strtolower ($tmpTools->getParam(JA_TOOL_COLOR)); ?>-ie6.php" rel="stylesheet" type="text/css" />
<script type="text/javascript">
window.addEvent ('load', makeTransBG);
function makeTransBG() {
makeTransBg($$('img'));
}
</script>
<![endif]-->
<?php } ?>
<!--[if gt IE 7]>
<link href="<?php echo $tmpTools->templateurl(); ?>/css/ie8.css" rel="stylesheet" type="text/css" />
<![endif]-->

</head>

<body id="bd" class="<?php echo $tmpTools->getParam(JA_TOOL_LAYOUT);?> <?php echo $tmpTools->getParam(JA_TOOL_SCREEN);?> fs<?php echo $tmpTools->getParam(JA_TOOL_FONT);?>" >
<a name="Top" id="Top"></a>
<ul class="accessibility">
	<li><a href="<?php echo $tmpTools->getCurrentURL();?>#ja-content" title="<?php echo JText::_("Skip to content");?>"><?php echo JText::_("Skip to content");?></a></li>
	<li><a href="<?php echo $tmpTools->getCurrentURL();?>#ja-mainnav" title="<?php echo JText::_("Skip to main navigation");?>"><?php echo JText::_("Skip to main navigation");?></a></li>
	<li><a href="<?php echo $tmpTools->getCurrentURL();?>#ja-col1" title="<?php echo JText::_("Skip to 1st column");?>"><?php echo JText::_("Skip to 1st column");?></a></li>
	<li><a href="<?php echo $tmpTools->getCurrentURL();?>#ja-col2" title="<?php echo JText::_("Skip to 2nd column");?>"><?php echo JText::_("Skip to 2nd column");?></a></li>
</ul>

<div id="ja-wrapper">

<!-- BEGIN: CPANEL -->
<div id="ja-cpanel">
	<?php if ($this->countModules('user4')) { ?>
	<div id="ja-search">
		<jdoc:include type="modules" name="user4" style="raw" />
	</div>	
	<?php } ?>
	
	<div id="ja-pathway">
	<strong>You are here: </strong><jdoc:include type="module" name="breadcrumbs" />
	</div>
	
</div>
<!-- END: CPANEL -->

<!-- BEGIN: HEADER -->
<div id="ja-header" class="clearfix">

	<?php 
	$siteName = $tmpTools->sitename(); 
	if ($tmpTools->getParam('logoType')=='image') { ?>
	<h1 class="logo">
		<a href="index.php" title="<?php echo $siteName; ?>"><span><?php echo $siteName; ?></span></a>
	</h1>
	<?php } else { 
	$logoText = (trim($tmpTools->getParam('logoText'))=='') ? $config->sitename : $tmpTools->getParam('logoText');
	$sloganText = (trim($tmpTools->getParam('sloganText'))=='') ? JText::_('SITE SLOGAN') : $tmpTools->getParam('sloganText');	?>
	<div class="logo-text">
		<h1>
			<a href="index.php" title="<?php echo $siteName; ?>"><span><?php echo $logoText; ?></span></a>	
		</h1>
		<p class="site-slogan"><?php echo $sloganText;?></p>
	</div>
	<?php } ?>

	<?php if (!$tmpTools->isContentEdit() && $this->countModules('vm-cart')) { ?>
	<div id="ja-vmcart">
		<jdoc:include type="modules" name="vm-cart" style="xhtml" />
	</div>
	<?php } ?>
	
<!-- BEGIN: MAIN NAVIGATION -->
<?php if ($tmpTools->getParam('ja_menu') != 'none') : ?>
<div id="ja-mainnavwrap">
  	
  <div id="ja-mainnav" class="clearfix">
		<?php if ($jamenu) $jamenu->genMenu (0); ?>
  </div>
	
</div>
<?php endif; ?>
<!-- END: MAIN NAVIGATION -->
  
</div>
<!-- END: HEADER -->

<?php if (!$tmpTools->isContentEdit() && $this->countModules('ja-slideshow')) { ?>
<!-- BEGIN: SLIDESHOW -->
<div id="ja-slideshow" class="clearfix">
  <div id="ja-slideshow-bot"><div id="ja-slideshow-top" class="clearfix">
    <jdoc:include type="modules" name="ja-slideshow" style="raw" />
  </div></div>
</div>
<!-- END: SLIDESHOW -->
<?php } ?>

<div id="ja-containerwrap<?php echo $divid; ?>">
<div id="ja-container"><div id="ja-container-inner" class="clearfix">

	<!-- BEGIN: CONTENT -->
	<div id="ja-mainbodywrap">
	
	<div id="ja-mainbody" class="clearfix">

		<div id="ja-contentwrapper">
		
    <?php if ( !$tmpTools->isContentEdit() && ($this->countModules('vm-fp') || $this->countModules('ja-slider')) ) { ?>
      <div id="ja-productwrap"><div id="ja-product-bot"><div id="ja-product-top" class="clearfix">
      
        <?php if ( $this->countModules('vm-fp') ) { ?>
        <div id="ja-fp">
          <jdoc:include type="modules" name="vm-fp" style="xhtml" />
        </div>
        <?php } ?>
        
        <?php if ( $this->countModules('ja-slider') ) { ?>
        <div id="ja-slider">
          <jdoc:include type="modules" name="ja-slider" style="xhtml" />
        </div>
        <?php } ?>
      
      </div></div></div>
    <?php } ?>

    <!-- BEGIN: CONTENT -->
		<div id="ja-contentwrap"><div id="ja-content">
		
			<jdoc:include type="message" />

			<div id="ja-current-content" class="clearfix">

    		<jdoc:include type="component" />

			</div>

		</div></div>
		<!-- END: CONTENT -->
		
    </div>

	  <?php if ($ja_left) { ?>
	  <!-- BEGIN: LEFT COLUMN -->
		<div id="ja-col1">
		<div class="ja-innerpad">

			<?php if ($hasSubnav) : ?>
			<div id="ja-subnav" class="module_menu"><div><div><div>
				<h3>On this page</h3>
				<?php if ($jamenu) $jamenu->genMenu (1,1);	?>
			</div></div></div></div>
			<?php endif; ?>
		
			<jdoc:include type="modules" name="left" style="rounded" />

		</div>
		</div><br />
		<!-- END: LEFT COLUMN -->
		<?php } ?>

	</div></div>
	<!-- END: CONTENT -->
		
	<?php if ($ja_right) { ?>
	<!-- BEGIN: RIGHT COLUMN -->
	<div id="ja-col2">
	<div class="ja-innerpad">
		<jdoc:include type="modules" name="right" style="rounded" />
	</div></div><br />
	<!-- END: RIGHT COLUMN -->
	<?php } ?>

</div></div>
</div>

	<?php
	$spotlight = array ('user1','user2','user5','user6','user7');
	$botsl = $tmpTools->calSpotlight ($spotlight,$tmpTools->isOP()?100:99.9);
	if( !$tmpTools->isContentEdit() && $botsl ) {
	?>
	<!-- BEGIN: BOTTOM SPOTLIGHT-->
	<div id="ja-botsl"><div id="ja-botsl-bot"><div id="ja-botsl-top" class="clearfix">
	
	  <?php if( $this->countModules('user1') ) {?>
	  <div class="ja-box<?php echo $botsl['user1']['class']; ?>" style="width: <?php echo $botsl['user1']['width']; ?>;">
			<jdoc:include type="modules" name="user1" style="xhtml" />
	  </div>
	  <?php } ?>
	  
	  <?php if( $this->countModules('user2') ) {?>
	  <div class="ja-box<?php echo $botsl['user2']['class']; ?>" style="width: <?php echo $botsl['user2']['width']; ?>;">
			<jdoc:include type="modules" name="user2" style="xhtml" />
	  </div>
	  <?php } ?>
	  
	  <?php if( $this->countModules('user5') ) {?>
	  <div class="ja-box<?php echo $botsl['user5']['class']; ?>" style="width: <?php echo $botsl['user5']['width']; ?>;">
			<jdoc:include type="modules" name="user5" style="xhtml" />
	  </div>
	  <?php } ?>
	
	  <?php if( $this->countModules('user6') ) {?>
	  <div class="ja-box<?php echo $botsl['user6']['class']; ?>" style="width: <?php echo $botsl['user6']['width']; ?>;">
			<jdoc:include type="modules" name="user6" style="xhtml" />
	  </div>
	  <?php } ?>

	  <?php if( $this->countModules('user7') ) {?>
	  <div class="ja-box<?php echo $botsl['user7']['class']; ?>" style="width: <?php echo $botsl['user7']['width']; ?>;">
			<jdoc:include type="modules" name="user7" style="xhtml" />
	  </div>
	  <?php } ?>

	</div></div></div>
	<!-- END: BOTTOM SPOTLIGHT -->
	<?php } ?>

<!-- BEGIN: FOOTER -->
<div id="ja-footer" class="clearfix">
	<jdoc:include type="modules" name="user3" />
	<jdoc:include type="modules" name="footer" />
</div>
<!-- END: FOOTER -->

<jdoc:include type="modules" name="debug" />
<script type="text/javascript">
	addSpanToTitle();
	//jaAddFirstItemToTopmenu();
	//jaRemoveLastContentSeparator();
	//jaRemoveLastTrBg();
	//moveReadmore();
	//addIEHover();
	//slideshowOnWalk ();
	jaMenuIcon();
	fixMenuWidth();
</script>

</div>

</body>

</html>
