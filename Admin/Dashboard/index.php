<?php
    include("Header.php");
    include("Sidebar.php");
?>
		<div class="page-wrapper">
        <div class="page-content">
        <div class="row row-cols-1 row-cols-lg-2 row-cols-xl-4">
            <div class="col-md-6">
                <div class="card radius-10 bg-info">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                                <?php 
                                $sql="SELECT * FROM `message`";
                                $result=$server->total_row($sql);
                                ?>
                                <p class="mb-0 text-white">Total Quarys</p>
                                <h4 class="my-1 text-white fw-bold fs-3"><?php echo $result;?></h4>
                            </div>
                            <div class="widgets-icons bg-white text-success ms-auto"><i class="bx bx-user-pin"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card radius-10 bg-success">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                            <?php 
                                $sql="SELECT * FROM `usr_details`";
                                $total_visitors=$server->total_row($sql);
                                ?>
                                <p class="mb-0 text-white">Total Visitors</p>
                                <h4 class="my-1 text-white fw-bold fs-3"><?php echo $total_visitors;?></h4>
                            </div>
                            <div class="widgets-icons bg-white text-success ms-auto"><i class="bx bx-bulb"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
        </div>
        </div>
    <?php
    include("Footer.php");
    ?>
<!--     <script src="https://kit.fontawesome.com/0e693b507d.js" crossorigin="anonymous"></script> -->
<script>
    function cheque() {
        let id=$('#phone').val();
        $.post('../../Action/Admin/showinfo.php',   // url
       { id:id, phone:"phone"}, // data to be submit
       function(data, status, jqXHR) {// success callback
        $('#data').html(data);
        })


    }
</script>