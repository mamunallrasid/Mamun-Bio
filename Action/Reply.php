<?php 
require_once("../OOP_CLASS/db-connect/connect.php");
require_once("../OOP_CLASS/class/common_class.php");
require_once("../OOP_CLASS/function/function.php");
require_once("../OOP_CLASS/sending_mail/PHPMailerAutoload.php");
require_once ("../OOP_CLASS/sending_mail/class.phpmailer.php");
$server=new Main_Class();

if(isset($_POST['submit']))
{
	$name=$_POST['Name'];
    $mail=$_POST['Email'];
    $sub=$_POST['Subject'];
    $msg=$_POST['msg'];
    if(send_email($mail,$sub,$msg))
    {
        echo json_encode(
            [
                'status'=>true,
                'redirect'=>false,
                'reload'=>true,
                'message'=>'Your Reply Send Successfully Completed'
            ]
            );  
    }
    else
    {
        echo json_encode(
            [
                'status'=>false,
                'redirect'=>false,
                'reload'=>false,
                'message'=>'Email Send Faild, Please Try Again !'
            ]
            );
    	
    }
}



if(isset($_POST['delete']))
 {
    $id=$_POST['id'];
    $sql="DELETE FROM message WHERE Id='$id'";
    if($data=$server->insert($sql))
    {
       echo json_encode(
                            [
                                'status'=>true,
                                'redirect'=>false,
                                'reload'=>true,
                                'message'=>'Delete Successfully'
                            ]
                            );  
    }
    else
    {
         echo json_encode(
                        [
                            'status'=>false,
                            'redirect'=>false,
                            'reload'=>false,
                            'message'=>'Delete Faild, Please Try Again !'
                        ]
                        );
    }
 }

?>