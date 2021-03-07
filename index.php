<?php
include_once 'dbconnect.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
  #map{
    height: 100vh;//100% view height
    width: 100vw;// 100% view width;
  }
  </style>
</head>
<body>

  <div id="map">
  <?php   $result = mysqli_query($conn,"SELECT * FROM user");
          $result2 = mysqli_query($conn,"SELECT * FROM user");
  ?>
    <script>
        function initMap() {
                            // Map options
                            var options =   {
                                                zoom:12, 
                                                center:{lat:19.2183,lng:72.9781}
                                            }

                            // New map
                            var map = new google.maps.Map(document.getElementById('map'), options);
                            var markers =   [
                                                <?php if($result->num_rows > 0)
                                                {
                                                    while($row = $result->fetch_assoc())
                                                    {
                                                        echo '["'.$row['TYPE'].'", '.$row['LATITUDE'].', '.$row['LONGITUDE'].'],';
                                                    }
                                                }
                                                ?>
                                            ];
                        var infoWindowContent = [
                                                <?php if($result2->num_rows > 0)
                                                {
                                                    while($row = $result2->fetch_assoc())
                                                    { ?>
                                                        ['Name:-<?php echo $row['NAME'];?>'],
                                              <?php }
                                                }
                                                ?>
                                            ];       

                    var infoWindow = new google.maps.InfoWindow({ maxWidth: 450 }), marker, i;


                            for( i = 0; i < markers.length; i++ ) 
                            {
                                if(markers[i][0] == 'Doctor')
                                {
                                    var icon1 = 'icon/doctor.png';
                                    var title1 = 'Doctor';
                                }
                                else if(markers[i][0] == 'Engineer')
                                {
                                    var icon1 = 'icon/engineer.png';
                                    var title1 = 'Engineer';
                                }
                                else if(markers[i][0] == 'Lawyer')
                                {
                                    var icon1 = 'icon/lawyer.png';
                                    var title1 = 'Lawyer';
                                }
                                
                                var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
                                marker = new google.maps.Marker({
                                    position: position,
                                    map: map,
                                    Animation: google.maps.Animation.DROP,
                                    icon: icon1,
                                    title: title1
                                    
                                });
                                
                                // Add info window to marker    
                                google.maps.event.addListener(marker, 'click', (function(marker, i) {
                                    return function() {
                                        infoWindow.setContent(infoWindowContent[i][0]);
                                        infoWindow.open(map, marker);
                                    }
                                })(marker, i));
                            }
        }
    </script>
  <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=<API KEY>&callback=initMap">
    </script>
   </div>
</body>
</html>