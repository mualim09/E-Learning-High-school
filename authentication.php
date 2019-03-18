<?php
/**
 * @package    DEVELOPMENT OF AN E-LEARNING SYSTEM FOR MGA AKDANG PAMPANITIKANG MEDITERRANEAN AT KANLURANIN
 *
 * @copyright  Copyright (C) 2019, All rights reserved.
 * @license    MIT License version or later; see licensing/LICENSE.txt
 */
session_start();
if(isset($_SESSION['login_user']))
{      
     header('location: dashboard');
}
?>
<!DOCTYPE html>
<html>
<?php 
include("inc/main-head.php");
?>

<body class="login-page">
    <div class="login-box" style="background-color: rgb(235, 5, 6);">
        <div class="text-center logo" >
            <div style="height: 5px;"></div>
            <h3 style="margin-top: 25px; color: white;">Login</h3>
        </div>
        <div class="card">
            <div class="body">
                <div id="sign_in" >
                    <div class="text-center msg">
                        
                        <img src="assets/images/logo_vectorized.png" alt="Naic HS Logo" style="width: 100px;">
                        <h5>Naic Coastal National High School</h5>
                        <h3>E-Learning System</h3>
                        <small>Login here using your username and password</small>
                    </div>
                    <ul class="nav nav-tabs">
                      <li class="active"><a data-toggle="tab" href="#student">Student</a></li>
                      <li><a data-toggle="tab" href="#instructor">Teacher</a></li>
                      <li><a data-toggle="tab" href="#admin">Admin</a></li>
                    </ul>

                    <div class="tab-content">
                      <div id="student" class="tab-pane fade in active">
                        <form action="data-login.php" method="POST"  role="form">
                            
                       
                         <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">person</i>
                            </span>
                            <div class="form-line">
                                <input type="text" class="form-control" name="username" placeholder="Student Number" required autofocus>
                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">lock</i>
                            </span>
                            <div class="form-line">
                                <input type="password" class="form-control" name="password" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-8 p-t-5">
                                <input type="checkbox" name="rememberme" id="rememberme" class="filled-in chk-col-pink">
                                <label for="rememberme">Remember Me</label>
                            </div>
                            <div class="col-xs-4">
                                <button class="btn btn-block bg-pink waves-effect" type="submit" name="submit_student">SIGN IN</button>
                            </div>
                        </div>
                         </form>
                      </div>

                      <div id="instructor" class="tab-pane fade">
                        <form action="data-login.php" method="POST"  role="form">
                            
                        
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">person</i>
                            </span>
                            <div class="form-line">
                                <input type="text" class="form-control" name="username" placeholder="Instructor ID" required autofocus>
                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">lock</i>
                            </span>
                            <div class="form-line">
                                <input type="password" class="form-control" name="password" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-8 p-t-5">
                                <input type="checkbox" name="rememberme" id="rememberme" class="filled-in chk-col-pink">
                                <label for="rememberme">Remember Me</label>
                            </div>
                            <div class="col-xs-4">
                                <button class="btn btn-block bg-pink waves-effect" type="submit" name="submit_instructor">SIGN IN</button>
                            </div>
                        </div>
                        </form>
                      </div>
                     <!--  //admin -->
                      <div id="admin" class="tab-pane fade">
                        <form action="data-login.php" method="POST"  role="form">
                         <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">person</i>
                            </span>
                            <div class="form-line">
                                <input type="text" class="form-control" name="username" placeholder="Username" required autofocus>
                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">lock</i>
                            </span>
                            <div class="form-line">
                                <input type="password" class="form-control" name="password" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-8 p-t-5">
                                <input type="checkbox" name="rememberme" id="rememberme" class="filled-in chk-col-pink">
                                <label for="rememberme">Remember Me</label>
                            </div>
                            <div class="col-xs-4">
                                <button class="btn btn-block bg-pink waves-effect" type="submit" name="submit_admin">SIGN IN</button>
                            </div>
                        </div>
                        </form>
                      </div>
                     <!--  //admin -->
                    </div>
                   
                    <hr>
                    <div class="row m-t-15 m-b--20">
                        <div class="col-xs-6 align-right">
                            <a href="forgot-password.html">Forgot Password?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php
    include("inc/main-js.php");
    ?>
</body>

</html>