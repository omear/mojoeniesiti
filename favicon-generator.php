<?php
session_start();
require_once("scripts/config.php");
require_once("scripts/functions.php");
require( dirname( __FILE__ ) . '/scripts/class-php-ico.php' );
$errors = array();
$advert = "Add Event";
$message = "";

if(isset($_POST["submit"])){
    $postvars = array("image" => trim($_FILES["fileimage"]["name"]),
    "image_tmp"        => $_FILES["fileimage"]["tmp_name"],
    "image_size"    => (int)$_FILES["fileimage"]["size"]);

    $valid_exts = array("jpg","jpeg","gif","png");
    $ext = substr(strrchr($postvars["image"], "."), 1);

    if(!in_array($ext,$valid_exts)) $errors[] = "Invalid file format!, png, jpg, gif, bitmap image files only";
    if($_POST["dimension"] == "") $errors[] = "Please select dimension";
    if($postvars["image_size"] > 179200) $errors[] = "File too large, maximum of 176kb allowed";
    if($_SESSION['smartCheck']['securitycode']!= md5($_POST['securitycode']))$errors[] = "Invalid security code";
    if(count($errors) > 0){
        $message = '<div class="alert notification alert-error">
        <strong>Please attend to the following:</strong>
        <ul>';
        foreach($errors as $error){
        $message .= '<li><en>'.$error.'</em></li>';
        }
        $message .='</ul></div>';
    }
    else{
        $directory = "./favicon/"; // Directory to save favicons. Include trailing slash.
        $directoryGen = "./favicon/gen/"; // Directory to save favicons. Include trailing slash.
        $filename = time().$postvars["image"];
        move_uploaded_file($postvars["image_tmp"],$directory.$filename);

        switch($_POST["dimension"]){
            case '16':  $val = 16;  break;
            case '32':  $val = 32; break;
            case '64': $val = 64; break;
        }

        $ico_lib = new PHP_ICO( $directory.$filename, array( array( $val, $val )));
        $ico_lib->save_ico( $directoryGen.time()."_favicon.ico" );
        $message = '<div class="alert notification alert-success">
        <p>Your Favicon was created successfuly, <a href="'.SITE_URL.'downloadicon/'.time()."_favicon.ico".'">download it here</a></p>
        </div>';
    }
}
$title = "Favicon Generator - Nigerian Seminars and Trainings";
$meta_description = "Use our free favicon generator tool to generate favicon for your website";
?>
<!DOCTYPE html>
<html lang="en">
<head>
<?php include('tools/analytics.php');?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<title><?php echo $title; ?></title>
<meta name="description" content="<?php echo $meta_description;?>"/>
<meta name="keywords" content="<?php echo $title; ?>" />
<meta name="dcterms.description" content="<?php echo $meta_description;?>" />
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:description" content="<?php echo $meta_description;?>" />
<meta property="twitter:title" content="<?php echo $title; ?>" />
<meta property="twitter:description" content="<?php echo $meta_description;?>" />
<?php include("scripts/headers_new.php");?>
<script type="text/javascript" src="<?php echo SITE_URL;?>css/smartforms/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<?php echo SITE_URL;?>css/smartforms/js/jquery-ui-1.10.4.custom.min.js"></script>
<script type="text/javascript" src="<?php echo SITE_URL;?>js/jquery.validate.js"></script>
<script type="text/javascript" src="<?php echo SITE_URL;?>css/smartforms/js/js/additional-methods.js"></script>
<script type="text/javascript">

/* @reload captcha
------------------------------------------- */			   


//script for the search calender
$(function() {
$("#start_date").datepicker({
defaultDate: "+1w",
changeMonth: false,
numberOfMonths: 1,
prevText: '<i class="fa fa-chevron-left"></i>',
nextText: '<i class="fa fa-chevron-right"></i>',
onClose: function( selectedDate ) {
$( "#end_date" ).datepicker( "option", "minDate", selectedDate );
}
});

$("#end_date").datepicker({
defaultDate: "+1w",
changeMonth: false,
numberOfMonths: 1,
prevText: '<i class="fa fa-chevron-left"></i>',
nextText: '<i class="fa fa-chevron-right"></i>',			
onClose: function( selectedDate ) {
$( "#end_date" ).datepicker( "option", "maxDate", selectedDate );
}
});

function reloadCaptcha(){
$("#captcha").attr("src","<?php echo SITE_URL;?>tools/captcha.php?r=" + Math.random());
}

$('.captcode').click(function(e){
e.preventDefault();
reloadCaptcha();
});




});



</script>
<script type="text/javascript">

$(function() {

/* @custom validation method (smartCaptcha) 
------------------------------------------------------------------ */

$.validator.methods.smartCaptcha = function(value, element, param) {
return value == param;
};

$( "#eventForm" ).validate({

/* @validation states + elements 
------------------------------------------- */

errorClass: "state-error",
validClass: "state-success",
errorElement: "em",

/* @validation rules 
------------------------------------------ */

rules: {
dimension: {
    required: true
},

securitycode:{
    required:true
},
image:{
required:true,
extension:"jpg|png|pdf|bmp"
},																							

},

/* @validation error messages 
---------------------------------------------- */

messages:{
dimension: {
    required: 'Select icon dimension'
},
image:{
required:'Browse to add some order files',
extension:'Sorry, file format not supported'
},
securitycode:{
    required: 'Please enter security code'
}	


},

/* @validation highlighting + error placement  
---------------------------------------------------- */	

highlight: function(element, errorClass, validClass) {
$(element).closest('.field').addClass(errorClass).removeClass(validClass);
},
unhighlight: function(element, errorClass, validClass) {
$(element).closest('.field').removeClass(errorClass).addClass(validClass);
},
errorPlacement: function(error, element) {
if (element.is(":radio") || element.is(":checkbox")) {
element.closest('.option-group').after(error);
} else {
error.insertAfter(element.parent());
}
}

});		

});				

</script>
</head>

<body>
<?php include("tools/header_new.php");?>
<div id="main">
<div id="content">
<?php include("tools/categories_new.php");?>
<div id="content_left">
<div id="subpage">
<div class="event_table_inner">
<table style="width:100%;">
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style="padding-left:8px"><h1 style="font-size:24px; padding:5px;">Favicon Generator</h1></td>
</tr>
<tr>
<td style="font-size:16px"><h2 style="font-weight:normal; font-size: 13px;">Use our free tool to generate favicon for your website</h2></td>
</tr>
<tr>
<td style="font-size:11px"><h3>&nbsp;</h3></td>
</tr>
</table>
</div>
<div id="contact-wrapper" class="rounded smart-forms" style="margin-top:8px; padding-top:8px; margin-bottom:10px;"> 
<?php echo $message;?>
<form method="post" id="eventForm" enctype="multipart/form-data">
<table class="event_detail">
<tr>
<td><div class="section colm colm6">
<label class="field select">
<select id="dimension" name="dimension">
<option value="">Select favicon dimension</option>
<option value="16">16 X 16 px</option>
<option value="32">32 X 32 px</option>
<option value="64">64 X 64 px</option>
</select>
<i class="arrow"></i>                    
</label>  
</div></td>
</tr>
<tr>
<td>
<div class="section">
<span class="field prepend-icon file">
<span class="button"> Choose File </span>
<input type="file" class="gui-file" name="fileimage" id="fileimage" onChange="document.getElementById('uploader1').value = this.value;">
<input type="text" class="gui-input" id="uploader1" placeholder="Select image file" readonly >
<span class="field-icon"><i class="fa fa-upload"></i></span>
</span>
</div>
</td>
</tr>
<tr>
<td><div class="smart-widget sm-left sml-120">
<label class="field">
<input type="text" name="securitycode" id="securitycode" class="gui-input sfcode" placeholder="Enter security code">
</label>
<span class="button captcode">
<img src="<?php echo SITE_URL;?>tools/captcha.php" id="captcha" alt="Captcha">
<span class="refresh-captcha"><i class="fa fa-refresh"></i></span>
</span>
</div></td>
</tr>
<tr>
<td style="text-align:center;"> <button type="submit" class="button btn-primary" name="submit">Generate</button> </td>
</tr>
</table>
</form>
</div>
</div>
<?php echo $GetAdverts -> LandScapeAds("Page Banner 1",$advert);?>
<div class="divider"  style=" border:#0C0; margin-bottom:5px;"></div>
</div>
<!-- end subpage -->
<?php include("tools/side-menu_new.php");?>	
<div class="clearfix"></div>
</div>
<div class="clearfix"></div>
</div>
</div>
<?php include ("tools/footer_new.php");?>

</body>
</html>