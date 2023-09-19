<?php 
require_once("../OOP_CLASS/db-connect/connect.php");
require_once("../OOP_CLASS/class/common_class.php");
require_once("../OOP_CLASS/function/function.php");
$server=new Main_Class();
if(isset($_POST['submit']))
{
    $user_name=$_POST['UserName'];
    $password=$_POST['password'];
    $sql="SELECT * FROM `admin_login`";
    $result=$server->single_row_fetch($sql);
    
        if($result['userid']==$user_name && $result['password']==$password)
        {
            $_SESSION['admin_name']=$result['name'];
            $_SESSION['admin_id']=$result['id'];
            echo json_encode(
                            [
                                'status'=>true,
                                'redirect'=>true,
                                'reload'=>false,
                                'url'=>'Dashboard/index.php',
                                'message'=>'Login Successfully'
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
                                'message'=>'Invalid candiadte, Please Try Again !'
                            ]
                            );
        }
}

if(isset($_POST['logout']))
{
  unset($_SESSION['admin_name']);
  unset($_SESSION['admin_id']);
  session_destroy();

   echo json_encode(
                      [
                          'status'=>true,
                          'redirect'=>true,
                          'reload'=>false,
                          'url'=>'../../index.php',
                          'message'=>'Logout Successfully'
                      ]
                      );
}
?>