<?php
 require_once("OOP_CLASS/db-connect/connect.php");
 require_once("OOP_CLASS/class/common_class.php");
 require_once("OOP_CLASS/function/function.php");
 $server=new Main_Class();
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="description" content="I am Mamun, a passionate web developer...">
    <meta name="keywords" content="Mamun Bio,Mamun web developer, Mamun bio, Mamun portfolio">
    <meta name="author" content="Mamun All Rasid">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mamun Bio|Mamun Biography |Mamun All Rasid Bio</title>
    <!-- font icons -->
    <link rel="stylesheet" href="assets/vendors/themify-icons/css/themify-icons.css">
    <!-- Bootstrap + JohnDoe main styles -->
	<link rel="stylesheet" href="assets/css/johndoe.css">
    <script src="https://kit.fontawesome.com/0e693b507d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css"rel="stylesheet">
   <style type="text/css">
       .error{
        color: red;
       }
   </style>
</head>
<?php 
require_once("OOP_CLASS/Ip_info.php");
$Os=User_Info::get_os();
$browser=User_Info::get_browser();
$Device=User_Info::get_device();
$ip = isset($_SERVER['HTTP_CLIENT_IP']) ? $_SERVER['HTTP_CLIENT_IP'] : (isset($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR']); // our ip here

// our request
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "http://ip-api.com/json/$ip");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$result = curl_exec($ch); //$result is already use to contain our response so it must be placed in all code you can use any name as result like geo $geo
$result = json_decode($result);

//define all array
$ips ="$result->query";
$country = "$result->country";
$city = "$result->city";
$zip ="$result->zip.";
$timezone="$result->timezone.";
$region ="$result->region";
$Countrycode="$result->countryCode";
$isp="$result->isp";
$regionName="$result->regionName";
$org="$result->org";
$as="$result->as";
$lat="$result->lat";
$lon="$result->lon";

?>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">
    <!-- <a href="components.html" class="btn btn-primary btn-component" data-spy="affix" data-offset-top="600"><i class="ti-shift-left-alt"></i> Components</a> -->
    <header class="header">
        <div class="container">
            <ul class="social-icons pt-3">
                <li class="social-item"><a class="social-link text-light" href="https://www.facebook.com/mamunall.rasid"><i class="ti-facebook" aria-hidden="true"></i></a></li>
                <li class="social-item"><a class="social-link text-light" href="https://twitter.com/Mallrasid"><i class="ti-twitter" aria-hidden="true"></i></a></li>
                <li class="social-item"><a class="social-link text-light" href="https://www.instagram.com/m__rasid/"><i class="ti-instagram" aria-hidden="true"></i></a></li>
                <li class="social-item"><a class="social-link text-light" href="https://wa.me/qr/QLEHX2NMRT4NN1"><i class="fas fa-brands fa-whatsapp"></i></a></li>
                
            </ul>  
            <div class="header-content">
                <h4 class="header-subtitle" >Hello, I am</h4>
                <h1 class="header-title">Mamun All Rasid</h1>
                <h6 class="header-mono" >Web Developer | BCA</h6>
            </div>
        </div>
    </header>
    <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-white" data-spy="affix" data-offset-top="510">
        <div class="container">
            <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse mt-sm-20 navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a href="#home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="#about" class="nav-link">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="#resume" class="nav-link">Resume</a>
                    </li>
                </ul>
                <ul class="navbar-nav brand">
                    <img src="Mamun.jpg" alt="" class="brand-img">
                    <li class="brand-txt">
                        <h5 class="brand-title">Mamun All Rasid</h5>
                        <div class="brand-subtitle">Web Designer | Developer</div>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="#portfolio" class="nav-link">Memory's</a>
                    </li>
                    <li class="nav-item">
                        <a href="#blog" class="nav-link">Teacher's</a>
                    </li>
                    <li class="nav-item last-item">
                        <a href="#contact" class="nav-link">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div id="about" class="row about-section">
            <div class="col-lg-4 about-card">
                <h3 class="font-weight-light">Who am I ?</h3>
                <span class="line mb-5"></span>
                <h5 class="mb-3">Mamun All Rasid Located In Our Lovely Earth</h5>
                <p class="mt-20 fs-5">Hey there, I'm Mamun All Rasid, From Kaliyganj Uttrar Dinajpur District,West Bengal.I'm all about crafting awesome things on the web. Imagine a digital world where ideas come to life – that's what I do. I specialize in Full Stack Web Development, which means I'm both a magician on the front end, creating those eye-catching designs and interactive features that make websites a joy to use, and a wizard on the back end, making sure everything runs smoothly behind the scenes.</p>
            </div>
            <div class="col-lg-4 about-card">
                <h3 class="font-weight-light">Personal Info</h3>
                <span class="line mb-5"></span>
                <ul class="mt40 info list-unstyled">
                    <li><span>Birthdate</span> : 18th April</li>
                    <li><span>Email</span> : mamunallrasid20@gmail.com</li>
                    <li><span>Phone</span> : +917001731589</li>
                    <li><span>Whatsapp</span> :+918170969489 </li>
                    <li><span>Address</span> : Sahebghata.Raghunath Pur.Kaliyganj.Uttar Dinajpur.W/B.India.733123</li>
                </ul>
                <ul class="social-icons pt-3">
                    <li class="social-item"><a class="social-link" href="https://www.facebook.com/mamunall.rasid"><i class="ti-facebook" aria-hidden="true"></i></a></li>
                    <li class="social-item"><a class="social-link" href="https://twitter.com/Mallrasid"><i class="ti-twitter" aria-hidden="true"></i></a></li>
                    <li class="social-item"><a class="social-link" href="https://www.instagram.com/m__rasid/"><i class="ti-instagram" aria-hidden="true"></i></a></li>
                     <li class="social-item"><a class="social-link text-danger" href="https://wa.me/qr/QLEHX2NMRT4NN1"><i class="fas fa-brands fa-whatsapp fs-2px"></i></a></li>
                </ul>  
            </div>
            <div class="col-lg-4 about-card">
                <h3 class="font-weight-light">My Expertise</h3>
                <span class="line mb-5"></span>
                <div class="row">
                    <div class="row">
                        <div class="col-1 text-danger pt-1"><i class="ti-stats-up icon-lg"></i></div>
                        <div class="col-10 ml-auto mr-3">
                            <h6>Responsive Design</h6>
                            <p class="subtitle">Ability to create web applications that work seamlessly across various devices and screen sizes.</p>
                            <hr>
                        </div>
                    </div>
                    <div class="col-1 text-danger pt-1"><i class="fa-brands fa-php"></i></div>
                    <div class="col-10 ml-auto mr-3">
                        <h6>Server-Side Scripting Language</h6>
                        <p class="subtitle">Proficiency in at least one server-side Scripting language Using PHP</p>
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-1 text-danger pt-1"><i class="ti-paint-bucket icon-lg"></i></div>
                    <div class="col-10 ml-auto mr-3">
                        <h6>Database Management</h6>
                        <p class="subtitle">Experience with designing and working with databases, including SQL</p>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Resume Section-->
    <section class="section" id="resume">
        <div class="container">
            <h2 class="mb-5"><span class="text-danger">My</span> Resume</h2>
            <div class="row">
                <div class="col-md-6 col-lg-4">
                    <div class="card">
                       <div class="card-header">
                            <div class="mt-2">
                                <h4><b>Project's</b></h4>
                                <span class="line"></span>  
                            </div>
                        </div>
                        <div class="card-body">
                        <h6 class="title text-danger">Rgj Blood Donors</h6>
                            <P class="subtitle">"I developed the RGJ Blood Donor website, connecting potential donors with life-saving opportunities. Designed an intuitive user interface with HTML/CSS, enhanced by dynamic features using JavaScript. Leveraged Node.js on the backend for seamless database integration and donor tracking. Contributed to a platform making a meaningful impact on healthcare accessibility."</P>
                            <hr>
                            <h6 class="title text-danger">Raiganj University AASM Gurden</h6>
                            <P class="subtitle">"I developed and maintained the Raiganj University AASM Gurden website,In this website we can dynamically add and remove all plants images & also Change Homepage Image & Notice  from the admin panel very easily”</P>
                            <hr>
                            <h6 class="title text-danger">Stock Management System</h6>
                            <P class="subtitle">I created the stock management website,Through this website any store can add its product and sell Product  and generate invoices and generate monthly weekly report here.</P>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card">
                       <div class="card-header">
                            <div class="mt-2">
                                <h4><b>Education</b></h4>
                                <span class="line"></span>  
                            </div>
                        </div>
                        <div class="card-body">
                            <h6 class="title text-danger">2020 -2023</h6>
                            <P class="text-success h5">Bachelor of Computer Applications(BCA)</P>
                            <P class="subtitle">I have completed my bachelor degree from <a href="https://raiganjuniversity.ac.in/">Raiganj University</a>,<a href="https://raiganjuniversity.ac.in/computer-information-science-2/">Department Of CIS</a> ,W/B,India,733123 .</P>
                            <hr>
                            <h6 class="title text-danger">2018 - 2020</h6>
                            <P class="text-success h5">High Secondary Degree</P>
                            <P class="subtitle">I Have Compleated My High Secondary Degree From Debinagar Kailas Chandra Radharani Vidyapith(H.S) is Located in Netaji More(Kasba),Raiganj<br>Every Moment of My Sechool in Kailash Was Beautiful & the Enviroment Was Beautiful.My Computer Sir Sumit Saha & My Geography Sir Bikas Kumar Saha Was My Favorite Teacher</P>
                            <hr>
                            <h6 class="title text-danger">2011 -2018</h6>
                            <P class="text-success h5"> Secondary Degree</P>
                            <P class="subtitle">I Hava compleate My Secondary Degree From Sahenghata N N High School(H.S) Is Located In Sahebghata,Kunor-Road,Kaliyaganj,733129<br></P>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card">
                       <div class="card-header">
                            <div class="pull-left">
                                <h4 class="mt-2"><b>Skills</b></h4>
                                <span class="line"></span>  
                            </div>
                        </div>
                        <div class="card-body pb-2">
                           <h6>Front-End Development</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 70%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>Back-End Development</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 65%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>User Experience (UX) Design</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-warning" role="progressbar" style="width: 75%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>Database Management</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-info" role="progressbar" style="width: 60%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>Problem-Solving</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-secondary" role="progressbar" style="width: 80%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>API Development</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 80%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                       <div class="card-header">
                            <div class="pull-left">
                                <h4 class="mt-2"><b>Languages</b></h4>
                                <span class="line"></span>  
                            </div>
                        </div>
                        <div class="card-body pb-2">
                           <h6>Core PHP</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-info" role="progressbar" style="width:100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>PHP OOP</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>HTML,CSS,JS</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-info" role="progressbar" style="width: 60%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <h6>Bootstrap</h6>
                            <div class="progress mb-3">
                                <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Portfolio Section -->
    <section class="section bg-custom-gray" id="portfolio">
        <div class="container">
            <h1 class="mb-5"><span class="text-danger">My</span> Memory's</h1>
            <div class="portfolio">
                <div class="filters">
                    <!-- <a href="#" data-filter=".new" class="active">
                        New
                    </a> -->
                    <a href="#" data-filter=".advertising">
                        <h6>School Tour</h6>
                    </a>
                    <a href="#" data-filter=".branding">
                       <h6>ChildHood</h6>
                    </a>
                    <a href="#" data-filter=".web">
                        <h6>Mess Memory<h6>
                    </a>
                </div>
                <div class="portfolio-container"> 
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Inde.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Inde.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Mess Memory</h6>
                                    <p class="subtitle">Celebrration's Independence Day At Biswajit Mess 2k19</p>
                                </div>
                            </div>   
                        </div>             
                    </div>
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/BirthDay.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/BirtyDay.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Mess Memory</h6>
                                    <p class="subtitle">Thanks to all my friends for celebrating such a beautiful first birthday in my life and that day was very precious for me because we all friends had a lot of fun together.</p>
                                </div>
                            </div>   
                        </div>             
                    </div>
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Kulik.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Kulik.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Mess Memory</h6>
                                    <p class="subtitle">Suddenly one Day All The Friend's of Mess went to see <b>Kulik Bird Sanctury</b></p>
                                </div>
                            </div> 
                        </div>                         
                    </div>
                    <div class="col-md-6 col-lg-4 advertising new">
                        <div class="portfolio-item">
                             <img src="assets/imgs/Group.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Group.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">School Tour</h6>
                                    <p class="subtitle">In Class XI with the help of our Geography teacher <b>Bikas Kumar Saha</b> Sir we get a chance to go to the hills and we have a lot of fun and those memories are very precious.</p>
                                </div>
                            </div>    
                        </div>              
                    </div> 
                    <div class="col-md-6 col-lg-4 web">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Biriyani.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Mamun.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Mess Memory</h6>
                                    <p class="subtitle">Suddenly, One Day I Arranged to Celebrrate Biriyani Party In Winter Day In Mess</p>
                                </div>
                            </div>
                        </div>                                                     
                    </div>

                    <div class="col-md-6 col-lg-4 advertising"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/Enjoy.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                               
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Enjoy.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">School Tour</h6>
                                    <p class="subtitle">The photo was inadvertently taken while climbing the mountain</p>
                                </div>
                            </div>
                        </div>                                                       
                    </div> 
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/vut.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">  
                           <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/vut.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Mess Memory</h6>
                                    <p class="subtitle">Suddenly one day everyone gets curious then we have a lot of fun making ghosts</p>
                                </div>
                            </div>
                        </div>                                                     
                    </div>
                     <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/park.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/park.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Mess Memory</h6>
                                    <p class="subtitle"><b>Moments at Karnjora Park</b> After giving driving test at RTO office at Raiganj Karnojora DM Office</p>
                                </div>
                            </div>   
                        </div>             
                    </div>
                    <div class="col-md-6 col-lg-4 advertising new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Wait.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">       
                           <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Wait.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">School Tour</h6>
                                    <p class="subtitle">Group pic In <b>Gorubethna(Fagu)</b></p>
                                </div>
                            </div>
                        </div>                                                       
                    </div> 
                    <div class="col-md-6 col-lg-4 advertising new"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/Radhika.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">            
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Radhika.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">School Tour</h6>
                                    <p class="subtitle">Picnic in <b>Radhikapur</b> on the occasion of new year with the help of our geography and computer sir</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 advertising new"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/Chill.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">            
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Chill.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">School Tour</h6>
                                    <p class="subtitle">We had a lot of fun sitting for a few moments in the ice-cold water coming down from the mountain.</p>
                                </div>
                            </div>
                        </div>
                                
                    </div>  
                     <div class="col-md-6 col-lg-4 advertising new"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/s1.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">            
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/s1.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">School Memory</h6>
                                    <p class="subtitle">Usually we were not allowed to take phone to school but for some reason I took the phone one day and this picture was taken that day but the camera is not that good</p>
                                </div>
                            </div>
                        </div>
                                
                    </div>  
                    <div class="col-md-6 col-lg-4 branding new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/c1.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                        
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/c1.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">ChildHood Friend</h6>
                                    <p class="subtitle">In Class XI, suddenly one day, four of my friends visited the place called <b>Elengia Village</b> along the Kulik River</p>
                                </div>
                            </div> 
                        </div>
                    </div> 
                    <div class="col-md-6 col-lg-4 branding new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/kcr.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                        
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/kcr.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">ChildHood Friend</h6>
                                    <p class="subtitle">On the occasion of the 50th anniversary of our school, we had walking in a row  the  morning  of Raiganj city,Everyone was standing in no line just before the start and this picture was taken at that time</p>
                                </div>
                            </div> 
                        </div>
                    </div> 
                    <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/c2.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">  
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/c2.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">ChildHood Friend</h6>
                                    <p class="subtitle">Elengia Village Going there, we two friends took pictures by the river and had a lot of fun</p>
                                </div>
                            </div>
                        </div>                                                     
                    </div> 
                    <div class="col-md-6 col-lg-4 branding new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/c3.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">   
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/c3.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">ChildHood Friend's</h6>
                                    <p class="subtitle">Karimul is the best and first friend of my life. Most of the funniest memories of my life are associated with Karimul</p>
                                </div>
                            </div>
                        </div>                                                    
                    </div> 
                    <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/c5.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                      
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/c5.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">ChildHood Friend's</h6>
                                    <p class="subtitle">One afternoon we all suddenly decided to go for a walk and cycled to Kuno Bridge</p>
                                </div>
                            </div>
                        </div>                                                      
                    </div> 
                     <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/c6.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                      
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/c6.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">ChildHood Friend's</h6>
                                    <p class="subtitle">In Class XI we celebrate Teacher's Day with Payal at their home with History sir</p>
                                </div>
                            </div>
                        </div>                                                      
                    </div> 
                    <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/c4.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">          
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/c4.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">ChildHood Friend's</h6>
                                    <p class="subtitle"><b>Mayank</b> First met this friend in class four and then we were very good friends but now we don't talk like that.The picture was taken at <b>Raiganj Expo Mela</b></p>
                                </div>
                            </div>
                        </div>                                                   
                    </div>
                </div> 
            </div>  
        </div>            
    </section>
    <!-- End of portfolio section -->
    <!-- Portfolio Section -->
    <section class="section bg-custom-gray" id="portfolio">
        <div class="container">
            <h1 class="mb-5"><span class="text-danger">Department</span> Memory's</h1>
            <div class="portfolio">
                <div class="filters ">
                   <!--  <a href="#" data-filter=".new" class="active">
                        New
                    </a> -->
                    <a href="#" data-filter=".advertising">
                        <h5>Bathc Mate</h5>
                    </a>
                    <a href="#" data-filter=".branding">
                       <h5>Celebration</h5>
                    </a>
                    <a href="#" data-filter=".web">
                        <h5>Senior<h5>
                    </a>
                </div>
                <div class="portfolio-container"> 
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Sn1.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Sn1.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Senior</h6>
                                    <p class="subtitle">Celebrration's Arup Sir Birth Day </p>
                                </div>
                            </div>   
                        </div>             
                    </div>
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Sn2.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Sn2.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Senior</h6>
                                    <p class="subtitle">After BCA 6th Sem & M.Sc cs,Cis Batha Farewell </p>
                                </div>
                            </div>   
                        </div>             
                    </div>
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Sn3.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Sn3.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Senior</h6>
                                    <p class="subtitle">With Our Senior <b>Anirban DaDa</b> At Farewell Party</p>
                                </div>
                            </div> 
                        </div>                         
                    </div>
                    <div class="col-md-6 col-lg-4 advertising new">
                        <div class="portfolio-item">
                             <img src="assets/imgs/bm6.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/bm6.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Batch_Mate</h6>
                                    <p class="subtitle">Going to<b> Karnjora Park</b>, everyone is standing on one pillar and pretending in different ways</p>
                                </div>
                            </div>    
                        </div>              
                    </div> 
                    <div class="col-md-6 col-lg-4 web">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Sn4.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Sn4.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Senior</h6>
                                    <p class="subtitle">Senior Dada & Didi were chatting together in our Lab</p>
                                </div>
                            </div>
                        </div>                                                     
                    </div>

                    <div class="col-md-6 col-lg-4 advertising"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/bm5.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                               
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/bm5.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Batch_Mate</h6>
                                    <p class="subtitle">We went to eat at<b> C Square Restaurant</b> on the occasion of Rakesh and Alolika's birthday</p>
                                </div>
                            </div>
                        </div>                                                       
                    </div> 
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Sn5.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">  
                           <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Sn5.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Senior</h6>
                                    <p class="subtitle">On the day of our university's 75th anniversary, we went to the main campus and lined up for food</p>
                                </div>
                            </div>
                        </div>                                                     
                    </div>
                     <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Sn6.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Sn6.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Senior</h6>
                                    <p class="subtitle">Suddenly, one day when everyone was going to hang out together, <b>Sucheta Didi</b> kissed Am on the cheek</p>
                                </div>
                            </div>   
                        </div>             
                    </div>
                     <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/puja.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">  
                           <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/puja.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Senior</h6>
                                    <p class="subtitle">During Durga Puja on Saptami, I had a lot of fun with my friends and Sucheta Didi.  Then I took a picture sitting on the flyover at the railway station in Raiganj and I was very tired</p>
                                </div>
                            </div>
                        </div>                                                     
                    </div>
                    <div class="col-md-6 col-lg-4 advertising new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/bm1.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">    <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/bm1.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Batch_Mate</h6>
                                    <p class="subtitle">Group Pic In <b>Freesers 2k22</b></p>
                                </div>
                            </div>
                        </div>                                                       
                    </div> 
                    <div class="col-md-6 col-lg-4 advertising new"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/bm2.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">            
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/bm2.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Batch_Mate</h6>
                                    <p class="subtitle">When we all try to follow Raju Bhai Style</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 advertising new"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/bm3.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">            
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/bm3.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Batch_Mate</h6>
                                    <p class="subtitle">All friends together when we go for a walk At <b>Karnjora Park</b></p>
                                </div>
                            </div>
                        </div>
                                
                    </div>  
                     <div class="col-md-6 col-lg-4 advertising new"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/bm4.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">            
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/bm4.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Batch_Mate</h6>
                                    <p class="subtitle">After the class was over, I was hanging out in the lab for air conditioning</p>
                                </div>
                            </div>
                        </div>
                                
                    </div>  

                    <div class="col-md-6 col-lg-4 branding new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/ce1.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                        
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/ce1.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Freshers Celebration <b>2k22</b></h6>
                                    <p class="subtitle">We organized a small function in our department to welcome the first year students.</p>
                                </div>
                            </div> 
                        </div>
                    </div> 
                    <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/ce2.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">  
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/ce2.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Celebration</h6>
                                    <p class="subtitle">A moment to bid farewell to our bsc & BCA 6 and MSc.cs & CIS 2 semester Senious.Let's take a picture together with our science and commerce Den sir</p>
                                </div>
                            </div>
                        </div>                                                     
                    </div> 
                    <div class="col-md-6 col-lg-4 branding new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Arup.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">   
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Arup.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Birthday Celebration</h6>
                                    <p class="subtitle">On the occasion of the birthday of respected Arup sir, we celebrate his birthday</p>
                                </div>
                            </div>
                        </div>                                                    
                    </div> 
                    <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/ce5.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                      
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/ce5.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Celebration</h6>
                                    <p class="subtitle">A few moments celebrating the birthdays of our department's famous grandpa and grandpa together.😝🤗</p>
                                </div>
                            </div>
                        </div>                                                      
                    </div> 
                     <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/ce6.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                      
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/ce6.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Celebration</h6>
                                    <p class="subtitle">A few moments to celebrate the birthday of the most attitude teacher in our department😒</p>
                                </div>
                            </div>
                        </div>                                                      
                    </div> 
                    <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/WeAll.jpeg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">          
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/WeAll.jpeg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Farewell Celebration</h6>
                                    <p class="subtitle">One of the best moments in our department was when we took a group photo together on the field before sending the senior grandparents off.   </p>
                                </div>
                            </div>
                        </div>                                                   
                    </div>
                </div> 
            </div>  
        </div>            
    </section>
    <!-- End of portfolio section -->
 <section class="section bg-custom-gray" id="portfolio">
        <div class="container">
            <h1 class="mb-5"><span class="text-danger">Best</span> Memory's</h1>
            <div class="portfolio">
                <div class="filters ">
                   <!--  <a href="#" data-filter=".new" class="active">
                        New
                    </a> -->
                    <a href="#" data-filter=".advertising">
                        <h5>Winner</h5>
                    </a>
                    <a href="#" data-filter=".branding">
                       <h5>Achivement</h5>
                    </a>
                    <a href="#" data-filter=".web">
                        <h5>Special Moment<h5>
                    </a>
                </div>
                <div class="portfolio-container"> 
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/sm1.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/sm1.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Special Moment</h6>
                                    <p class="subtitle">Celebrration's Teacher Day With My Sepcial<b>Partho Sir</b></p>
                                </div>
                            </div>   
                        </div>             
                    </div>
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/sm2.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/sm2.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Special Moment</h6>
                                    <p class="subtitle">With Abba </p>
                                </div>
                            </div>   
                        </div>             
                    </div>
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/sm3.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Sm3.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Verry Special</h6>
                                    <p class="subtitle">with my Amma</p>
                                </div>
                            </div> 
                        </div>                         
                    </div>
                    <div class="col-md-6 col-lg-4 advertising new">
                        <div class="portfolio-item">
                             <img src="assets/imgs/winner1.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/winner1.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Winner</h6>
                                    <p class="subtitle">RAIVERSIFEST 2K23(4 Jan-6 Jan)<b>At Raiganj University</b>,Our CIS department took the first position in the departmental exhibition and we won the first prize.</p>
                                </div>
                            </div>    
                        </div>              
                    </div> 
                    <div class="col-md-6 col-lg-4 web">
                        <div class="portfolio-item">
                            <img src="assets/imgs/sm4.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/sm4.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Exiting</h6>
                                    <p class="subtitle">When i Am Going Bangladesh Location Banglabandha Zoro Point(Siliguri,Fulbari)</p>
                                </div>
                            </div>
                        </div>                                                     
                    </div>
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/sm5.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/sm5.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Special Moment</h6>
                                    <p class="subtitle">Celebrration's Party With Senior & Bathc mate at<b>Sourav Resturent,Raiganj</b></p>
                                </div>
                            </div>   
                        </div>             
                    </div>
                    <div class="col-md-6 col-lg-4 web new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/drjlmaam.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/sm5.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Special Moment WIth Dr JLD Ma'am</h6>
                                    <p class="subtitle">Celebrration's farewell Dr JLD ma'am & provide me a <b>token of appreciation</b></p>
                                </div>
                            </div>   
                        </div>             
                    </div>

                    <div class="col-md-6 col-lg-4 advertising"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/winner2.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                               
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/winner2.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Winner</h6>
                                    <p class="subtitle"><b>After receiving the prize, all of us in our department were very happy beyond words❤🥳🥳</p>
                                </div>
                            </div>
                        </div>                                                       
                    </div> 
                    <div class="col-md-6 col-lg-4 advertising new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/winner3.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">    <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/winner3.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Winner</h6>
                                    <p class="subtitle">With Joyoti Ma'am after getting off the stage with the price</b></p>
                                </div>
                            </div>
                        </div>                                                       
                    </div> 
                    <div class="col-md-6 col-lg-4 advertising new"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/winner4.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">            
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/winner4.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Winner</h6>
                                    <p class="subtitle">We are awarded a certificate for being first in the exhibition🫠</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 advertising new"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/winner6.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">            
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/winner6.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Winner</h6>
                                    <p class="subtitle">This trophy is the pride of our department</b></p>
                                </div>
                            </div>
                        </div>
                                
                    </div>  
                     <div class="col-md-6 col-lg-4 advertising new"> 
                        <div class="portfolio-item">
                            <img src="assets/imgs/winner5.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">            
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/winner5.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Winner</h6>
                                    <p class="subtitle">All Sir Ma'am came to our exhibition camp on the first day of the exhibition</p>
                                </div>
                            </div>
                        </div>
                                
                    </div>  

                    <div class="col-md-6 col-lg-4 branding new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Ac4.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                        
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Ac4.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Achivement</h6>
                                    <p class="subtitle">An educational club is formed in our department under the supervision of Hod of our department (TRACULS) We can complete the first workshop passage of this club.</p>
                                </div>
                            </div> 
                        </div>
                    </div> 
                    <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Ac1.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">  
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Ac1.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Achivement</h6>
                                    <p class="subtitle">One of the biggest and best achievements of my life was my trip to Bangladesh
                                        source:<a href="https://m.facebook.com/story.php?story_fbid=pfbid0m5AsjtnG4tJVpyz4Q4uobLjZW5VHyeiCHZVj8WEauJE2ZTo9G3ZMxfqRMHuWwKGCl&id=100011533484612&sfnsn=wiwspmo&mibextid=6aamW6" style="color: blue;">Click</a></p>
                                </div>
                            </div>
                        </div>                                                     
                    </div> 
                    <div class="col-md-6 col-lg-4 branding new">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Ac5.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">   
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Ac5.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Achivement</h6>
                                    <p class="subtitle">There is no such thing as achievement in this picture. It is a post-examination picture taken offline Exam two years after Studying the university</p>
                                </div>
                            </div>
                        </div>                                                    
                    </div> 
                    <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Ac2.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                      
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Ac2.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Achivement</h6>
                                    <p class="subtitle">After our department HD Dr. PK sir asked me to go to our university main campus for work by West Bengal Higher Education Authority and after work a photo with UG council secretary</p>
                                </div>
                            </div>
                        </div>                                                      
                    </div> 
                    <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Ac3.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                      
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Ac3.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Achivement</h6>
                                    <p class="subtitle">Photo with our University Vice Council Ma'am and UG Arts Dean and UG Council Secretary under the supervision of the ug council secretary while working on the main campus of the university.</p>
                                </div>
                            </div>
                        </div>                                                      
                    </div> 
                    <div class="col-md-6 col-lg-4 branding">
                        <div class="portfolio-item">
                            <img src="assets/imgs/Ac3.jpg" class="img-fluid" alt="Download free bootstrap 4 admin dashboard, free boootstrap 4 templates">                      
                            <div class="content-holder">
                                <a class="img-popup" href="assets/imgs/Ac3.jpg"></a>
                                <div class="text-holder">
                                    <h6 class="title">Achivement</h6>
                                    <p class="subtitle">Photo with our University Vice Council Ma'am and UG Arts Dean and UG Council Secretary under the supervision of the ug council secretary while working on the main campus of the university.</p>
                                </div>
                            </div>
                        </div>                                                      
                    </div> 
                </div> 
            </div>  
        </div>            
    </section>

    <section class="section" id="blog">
        <div class="container">
            <h2 class="mb-5">Best <span class="text-danger"> Teacher's</span></h2>
            <div class="row">
                <div class="blog-card">
                    <div class="img-holder">
                        <img src="assets/imgs/partho.jpeg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, meyawo Landing page">
                    </div>
                    <div class="content-holder">
                        <h6 class="title"><b>When Parth Sir taught me</b></h6>

                        <p class="post-details">
                            <a href="#">By: Mamun All Rasid</a>
                            <a href="#"><i class="ti-heart text-danger"></i></a>
                            <a href="#"><i class="ti-comment"></i></a>
                            <p><i class="fa-regular fa-envelope"></i></p>
                        </p>
                        
                        <p>When I pass higher secondary exam from Kailas and want to do honors degree on computer subject.  Sumit Saha was my high school computer teacher at that time.  Told me that doing computer honors with me would be very difficult and not possible to complete computer honors with me 🙂😐</p>

                        <p><b>But before I passed higher secondary I thought that I will do Computer Honors i.e. BCA.</b></p>
                        <p>After that one of our Mess Dada Bapi & Samrat Da passed from Kailash and got admission in BCA.  Seeing this makes me want to read more BCA.  After that I got admission in BCA then I got a very good teacher Named <b>Parth</b> in my life.  Partha sir is very good as a teacher so good that it cannot be explained.  We all had a lot of fun together with the kind of study done very well when we went to sir.  And Parth sir played a big role in my life after getting admission in BCA course in Raiganj University.</p>
                    </div>
                </div><!-- end of blog wrapper -->

                <!-- blog-card -->
                <div class="blog-card">
                    <div class="img-holder">
                        <img src="assets/imgs/pk.jpeg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, meyawo Landing page">
                    </div>
                    <div class="content-holder">
                        <h6 class="title"><b>With Dr.P.K Paul Sir</b></h6>

                        <p class="post-details">
                            <a href="#">By:Mamun All Rasid</a>
                            <a href="#"><i class="ti-heart text-danger"></i></a>
                            <a href="#"><i class="ti-comment"></i></a>
                            <p><i class="fa-regular fa-envelope"></i> pkpaul.infotech@gmail.com </p>
                        </p>
                        
                        <p>After joining the university for the first year, due to online classes and online exams, we could not go to the department and did not develop a good relationship with everyone.  From second year our classes started offline and from then onwards we started taking classes.  Since then pk sir used to have our cyber security class since then i like sir a lot and all the students of our batch even permanent respect sir and love him a lot.  pk sir is very good compared to other sirs in our department talks very well with all of us and treats us like friends</p>

                    </div>
                </div><!-- end of blog wrapper -->
                <!-- blog-card -->
                <div class="blog-card">
                    <div class="img-holder">
                        <img src="assets/imgs/Sup.jpeg" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, meyawo Landing page">
                    </div>
                    <div class="content-holder">
                        <h4 class="title"><b>With Supriyan Sen Sir</b></h4>

                        <p class="post-details">
                            <a href="#">By:Mamun All Rasid</a>
                            <a href="#"><i class="ti-heart text-danger"></i></a>
                            <a href="#"><i class="ti-comment"></i></a>
                            <p><i class="fa-regular fa-envelope"></i> supriyan_sen@rediffmail.com</p>
                        </p>
                        
                        <p>After my admission in CIS department I like Sipriyan sir more than Umesh sir & Arup sir in the department.  Many sincere to Sir Time are more honest about studies than others.
                        Sir, I will remember one of his words for the rest of my life.  The exam was supposed to be online and sir we were having online class at that time sir told me one thing that <b>sir's responsibility is to teach and understand the reading it is not important how the exam will be done it is important whether we understand the reading or not.</b>  And I like this word of sir very much
</p>
                    </div>
                </div><!-- end of blog wrapper -->

            </div>
        </div>
    </section>

    <div class="section contact" id="contact">
        <div id="map" class="map"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="contact-form-card">
                        <h4 class="contact-title">Send a message</h4>
                        <form id="Value_Store_Form"  method="post">
                            <div class="form-group">
                                <input  class="form-control" type="text" name="name" id="name" placeholder="Name *" required>
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="email" name="email" id="email" placeholder="Email *" required>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="msg" id="msg" placeholder="Message*" rows="7" required></textarea>
                            </div>
                            <div class="form-group ">
                            <input type="hidden" id="url" value="Action/msg.php">
                              <button type="submit" class="form-control btn btn-primary" name="submit" id="submit">Send Message</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="contact-info-card">
                        <h4 class="contact-title">Get in touch</h4>
                        <div class="row mb-2">
                            <div class="col-1 pt-1 mr-1">
                                <i class="ti-mobile icon-md"></i>

                            </div>
                            <div class="col-10 ">
                                <h6 class="d-inline">Phone : <br> <span class="text-muted">+917001731589</span></h6>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-1 pt-1 mr-1">
                                <i class="ti-map-alt icon-md"></i>
                            </div>
                            <div class="col-10">
                                <h6 class="d-inline">Address :<br> <span class="text-muted">Sahebghata,Raiganj,U/D,West Bangal,India,733123</span></h6>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-1 pt-1 mr-1">
                                <i class="ti-envelope icon-md"></i>
                            </div>
                            <div class="col-10">
                                <h6 class="d-inline">Email :<br> <span class="text-muted">mamunallrasid20@gmail.com</span></h6>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-1 pt-1 mr-1">
                                <i class="fas fa-brands fa-whatsapp fa-2x" style="font-size: 28px;"></i>
                            </div>
                            <div class="col-10">
                                <h6 class="d-inline">Whatsapp:<br> <span class="text-muted">+918170969489</span></h6>
                            </div>
                        </div>
                        <ul class="social-icons pt-4">
                            <li class="social-item"><a class="social-link text-dark" href="https://www.facebook.com/mamunall.rasid"><i class="ti-facebook" aria-hidden="true"></i></a></li>
                            <li class="social-item"><a class="social-link text-dark" href="https://twitter.com/Mallrasid"><i class="ti-twitter" aria-hidden="true"></i></a></li>
                            <li class="social-item"><a class="social-link text-dark" href="https://www.instagram.com/m__rasid/"><i class="ti-instagram" aria-hidden="true"></i></a></li>
                            <li class="social-item"><a class="social-link text-dark" href="https://github.com/mamunallrasid"><i class="ti-github" aria-hidden="true"></i></a></li>
                             <li class="social-item"><a class="social-link text-dark" href="https://wa.me/qr/QLEHX2NMRT4NN1"><i class="fas fa-brands fa-whatsapp"></i></a></li>
                        </ul> 
                    </div>
                </div>
            </div>

        </div>
    </div>
    <footer class="footer py-3">
        <div class="container">
            <p class="small mb-0 text-light">
                &copy; <script>document.write(new Date().getFullYear())</script> Created With <i class="ti-heart text-danger"></i> By<span class="text-danger" title="Your Real IP Address Is"> Mamun All Rasid &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Your IP Address Is : <?php echo $ip; ?></span></a> 
            </p>
         </div>
    </footer>

	<!-- core  -->
    <script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.all.min.js"></script>
    <!-- bootstrap 3 affix -->
    <script src="assets/vendors/bootstrap/bootstrap.affix.js"></script>

    <!-- Isotope  -->
    <script src="assets/vendors/isotope/isotope.pkgd.js"></script>
    
     <!-- Google mpas -->
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCtme10pzgKSPeJVJrG1O3tjR6lk98o4w8&callback=initMap"></script>

    <!-- JohnDoe js -->
    <script src="assets/js/johndoe.js"></script>
     <!-- <script src="https://code.jquery.com/jquery-3.6.1.min.js" ></script> -->
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js" ></script>
    <script src="assets/Script/action.js"></script>


</body>
</html>
