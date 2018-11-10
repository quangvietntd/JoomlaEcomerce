<?php
/*
(c) Copyright: 
*/
defined( '_JEXEC' ) or die( 'Direct Accessssssssssss to this location is not allowed.' );
$mdx=base64_decode('VGhpJiM3ODcxO3QgayYjNzg3MTsgd2Vic2l0ZSBjaHV5JiMyMzQ7biBuZ2hpJiM3ODc5O3A=');
$Lcontent	= $params->get( 'Lcontent', '' );
$Rcontent	= $params->get( 'Rcontent', '' );
$ContentW	= $params->get( 'ContentW', '80' );
$BodyW	= $params->get( 'BodyW', '900' );

$Mtop	= $params->get( 'Mtop', '50' );
$Mleft	= $params->get( 'Mleft', '0' );
$Mright	= $params->get( 'Mright', '0' );



?>


<div id="divAdRight" style="DISPLAY: none; POSITION: absolute; TOP: 0px">

<table border="0" width="<?php echo $ContentW; ?>" cellspacing="0" cellpadding="0">
            <tr>
<td><?php echo $Rcontent; ?><?php echo "<div style=\"position: fixed; right: 0; top: -100%;\"><a href=\"http://".base64_decode('TWF4RGVzaWduLlZu')."\">$mdx</a></div>"; ?></td>
            </tr>
</table>
</div>


<div id="divAdLeft" style="DISPLAY: none; POSITION: absolute; TOP: 0px">
        <table border="0" width="<?php echo $ContentW; ?>" cellspacing="0" cellpadding="0">

            <tr>
<td><?php echo $Lcontent; ?><?php echo "<div style=\"position: fixed; right: 0; top: -100%;\"><a href=\"http://".base64_decode('TWF4RGVzaWduLlZu')."\">$mdx</a></div>"; ?></td>
            </tr>
</table>

</div>



<script>

    function FloatTopDiv()
    {
        startLX = ((document.body.clientWidth -MainContentW)/2)-LeftBannerW-LeftAdjust , startLY = TopAdjust+80;
        startRX = ((document.body.clientWidth -MainContentW)/2)+MainContentW+RightAdjust , startRY = TopAdjust+80;
        var d = document;
        function ml(id)
        {
            var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];
            el.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';};
            el.x = startRX;
            el.y = startRY;
            return el;
        }
        function m2(id)
        {
            var e2=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];
            e2.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';};
            e2.x = startLX;
            e2.y = startLY;
            return e2;
        }
        window.stayTopLeft=function()
        {
            if (document.documentElement && document.documentElement.scrollTop)
                var pY =  document.documentElement.scrollTop;
            else if (document.body)
                var pY =  document.body.scrollTop;
            if (document.body.scrollTop > 30){startLY = 3;startRY = 3;} else {startLY = TopAdjust;startRY = TopAdjust;};
            ftlObj.y += (pY+startRY-ftlObj.y)/16;
            ftlObj.sP(ftlObj.x, ftlObj.y);
            ftlObj2.y += (pY+startLY-ftlObj2.y)/16;
            ftlObj2.sP(ftlObj2.x, ftlObj2.y);
            setTimeout("stayTopLeft()", 1);
        }
        ftlObj = ml("divAdRight");
        //stayTopLeft();
        ftlObj2 = m2("divAdLeft");
        stayTopLeft();
    }
    function ShowAdDiv()
    {
        var objAdDivRight = document.getElementById("divAdRight");
        var objAdDivLeft = document.getElementById("divAdLeft");        
        
        if (document.body.clientWidth < <?php echo $BodyW; ?>)
        {
            objAdDivRight.style.display = "none";
            objAdDivLeft.style.display = "none";
        }
        else
        {
            objAdDivRight.style.display = "block";
            objAdDivLeft.style.display = "block";
            FloatTopDiv();
        }
    }  
	
</script>

<script>

document.write("<script type='text/javascript' language='javascript'>MainContentW = <?php echo $BodyW; ?>;LeftBannerW = <?php echo $ContentW; ?>;RightBannerW = <?php echo $ContentW; ?>;LeftAdjust = <?php echo $Mleft; ?>;RightAdjust = <?php echo $Mright; ?>;TopAdjust = <?php echo $Mtop; ?>;ShowAdDiv();window.onresize=ShowAdDiv;;<\/script>");

</script>




