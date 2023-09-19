<?php
 require_once("../OOP_CLASS/db-connect/connect.php");
 require_once("../OOP_CLASS/class/common_class.php");
 require_once("../OOP_CLASS/function/function.php");
 require_once("../OOP_CLASS/sending_mail/PHPMailerAutoload.php");
require_once ("../OOP_CLASS/sending_mail/class.phpmailer.php");
 $server=new Main_Class();
 if(isset($_POST['submit']))
 {
 	$Name=$_POST['name'];
    $Email=$_POST['email'];
    $message=$_POST['msg'];
    date_default_timezone_set("Asia/Kolkata");
    $time=date("H:i:s a");
    $date=date("d-m-Y");
    $yime=time();
    $subject="Mamun Biography";
    $msg="Hey,"."<br><br>"."    ".$Name."<br>"."    "."Thank You For Send A Message";
    $sql="INSERT INTO `message`(`Name`, `Email`, `Message`, `Date`) VALUES ('$Name','$Email','$message','$date')";
    if($server->insert($sql))
    {
        send_email($Email,$subject,$msg);
         echo json_encode(
                        [
                            'status'=>true,
                            'redirect'=>false,
                            'reload'=>true,
                            'message'=>'Message Send Successfully'
                        ]
                        );
    }
    else
    {
        echo json_encode(
                        [
                            'status'=>false,
                            'redirect'=>false,
                            'reload'=>true,
                            'message'=>'Error, Please Try Again !'
                        ]
                        );
    }

 }
?>