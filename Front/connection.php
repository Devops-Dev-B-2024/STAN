<?php
$con=mysqli_connect("stan-mysql","root","password","redstream_db");
if(mysqli_connect_error()){
    echo"<script>Cannot connect to database</script>";
    exit();
}
?>