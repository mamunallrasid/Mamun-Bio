<?php
include("Header.php");
include("Sidebar.php"); 
?>
 <div class="page-wrapper">
                <div class="page-content">
                   <div class="row">
                     <div class="col-md-12">
                            <div class="card">
                                <div class="card-header bg-primary">
                                     <h4 class="text-white">Total Querry's</h4>
                                </div>
                                <div class="card-body">
                                <div class="table-responsive">
                                    
                                <table id="example" class="table table-striped table-bordered" style="width:100%">
                                   <thead>
                                      <tr>
                                        <th scope="col">SL No</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Message</th>
                                        <th scope="col">Reply</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Time</th>
                                        <th scope="col">Option</th>
                                      </tr>
                                  </thead>
                                  <tbody class="text-center">
                                    <?php 
                                     $reply="SELECT * FROM message ORDER BY `id` DESC";
                                     if($data=$server->fetch_data($reply))
                                     {
                                      $i=1;
                                      foreach($data as $item)
                                      {
                                      ?>
                                      <tr>
                                          <th><?php echo $i++;?></th>
                                          <td><?php echo $item['Name']; ?></td>
                                          <td><?php echo $item['Email']; ?></td>
                                          <td><?php echo $item['Message']; ?></td>
                                          <td>
                                          <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal" onclick="mailSend('<?php echo $item['Email'];?>','<?php echo $item['Name'];?>')"><i class="fa-solid fa-reply"></i></button>
                                          </td>
                                            <td><?php echo $item['Date']; ?></td>
                                            <td><?php echo $item['time']; ?></td>
                                          <td>
                                        <button class="btn delete_btn btn-danger" data-id="<?php echo $item['Id'];?>" data-url="../Reply.php">Delete</button>
                                      </td>
								                     </tr>
                                    <?php
                                     }
                                     }
                                    ?>
                                   
                                  </tbody>
                                </table>
                                <!-- Button trigger modal -->

<!-- Modal -->
               <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header bg-info">
                        <h5 class="modal-title" id="exampleModalLabel">Reply Via Email</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                       
                        <form id="Value_Store_Form" method="POST">
                         <div class="form-group fw-bold">
                            <label for="exampleInputEmail1">Name</label>
                            <input type="text" class="form-control" id="Name" name="Name" aria-describedby="emailHelp" readonly >
                         </div>

                          <div class="form-group fw-bold">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="Email" name="Email" aria-describedby="emailHelp" readonly >
                          </div>

                          <div class="form-group fw-bold">
                            <label for="exampleInputEmail1">Subject</label>
                            <input type="text" class="form-control" id="Subject" name="Subject" aria-describedby="emailHelp" required>
                          </div>

                           <div class="form-group fw-bold">
                            <label for="exampleFormControlTextarea1">Reply Message</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1"  name="msg" rows="3" required></textarea>
                          </div>
                           <input type="hidden" id="url" value="../../Action/Reply.php">
                          <button type="submit" class="btn btn-primary mt-2" id="submit" name="submit">Send Email</button>
                          <!-- <button type="button" class="btn btn-secondary mt-2" data-dismiss="modal">Close</button> -->
                      </div>
                      </form>
                      </div>
                    </div>
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
<script>

  function mailSend(Mail,Name)
  {
    $("#Name").val(Name);
    $("#Email").val(Mail);

  }
</script>

