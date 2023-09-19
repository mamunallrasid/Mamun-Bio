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
                                     <h4 class="text-white">Visitor Detail's</h4>
                                </div>
                              <div class="card-body">
                              <div class="table-responsive">                              
                               <table id="example" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                      <tr>
                                        <th scope="col">Visitor SL</th>
                                        <th scope="col">IP Addess</th>
                                        <th scope="col">Country</th>
                                        <th scope="col">City Name</th>
                                        <th scope="col">Zip Code</th>
                                        <th scope="col">Time Zone</th>
                                        <th scope="col">Region Name</th>
                                        <th scope="col">ISP</th>
                                        <th scope="col">User OS</th>
                                        <th scope="col">User Browser</th>
                                        <th scope="col">User Device</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Time</th>
                                      </tr>
                                    </thead>
                                  <tbody class="text-center">
                                    <?php 
                                     $sql="SELECT * FROM usr_details ORDER BY `VisitorId` DESC";
                                     if($data=$server->fetch_data($sql))
                                     {
                                      foreach($data as $item)
                                      {
                                      ?>
                                      <tr>
                                          <td><?php echo $item['VisitorId']; ?></td>
                                          <td><?php echo $item['UserIp']; ?></td>
                                          <td><?php echo $item['Country']; ?></td>
                                          <td><?php echo $item['CityName']; ?></td>
                                          <td><?php echo $item['Zip_Code']; ?></td>
                                          <td><?php echo $item['TimeZone']; ?></td>
                                          <td><?php echo $item['Region_Name']; ?></td>
                                          <td><?php echo $item['Isp']; ?></td>
                                          <td><?php echo $item['UserOs']; ?></td>
                                          <td><?php echo $item['User_Browser']; ?></td>
                                          <td><?php echo $item['User_Device']; ?></td>
                                          <td><?php echo $item['Date']; ?></td>
                                          <td><?php echo $item['Time']; ?></td>
                                      </tr>
                                    <?php
                                     }
                                     }
                                    ?>
                                   
                                  </tbody>
                                </table>
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