<?php
    session_start();
    include_once "config.php";
    $fname = mysqli_real_escape_string($conn, $_POST['fname']);
    $lname = mysqli_real_escape_string($conn, $_POST['lname']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    if(!empty($fname) && !empty($lname) && !empty($email) && !empty($password)){
        //check if user email is valid or not
        if(filter_var($email, FILTER_VALIDATE_EMAIL)){
            //checking if the email exists in the database
            $sql = mysqli_query($conn, "SELECT email FROM users WHERE email = '{$email}'");
            if(mysqli_num_rows($sql) > 0){// if emial already exists
                echo "$email - This email already exists!";
            }else{
                // check the user upload file
                if(isset($_FILES['image'])){// if uploaded
                    $img_name = $_FILES['image']['name']; //geting user uploaded img name
                    $img_type = $_FILES['image']['type']; //geting user uploaded img type
                    $tmp_name = $_FILES['image']['tmp_name'];// temporary name is used to save/move file in our folder

                    //let,s explode image and get the last extention like jpeg png
                    $img_explode =explode('.', $img_name);
                    $img_ext = end($img_explode);//get extention

                    $extentions =['png','jpeg','jpg']; //valid extentions
                    if(in_array($img_ext, $extentions) === true){///check the image extention
                        $time = time(); //this will return the current time so the that an image has a unique name
                        
                        
                        $new_img_name = $time.$img_name;
                       
                        if(move_uploaded_file($tmp_name, "images/".$new_img_name)){//if sucessfully moved all mved image to our folder
                           $status ="Active now"; //once user signed up the status will change
                           $random_id = rand(time(), 10000000); //creating random id for users

                           //let's insert all user data inside table
                           $sql2 =mysqli_query($conn, "INSERT INTO users(unique_id, fname, lname, email, password, img, status)
                                               VALUES('{$random_id}', '{$fname}', '{$lname}', '{$email}', '{$password}', '{$new_img_name}', '{$status}')");
                           if($sql2){
                               $sql3 =mysqli_query($conn, "SELECT * FROM users WHERE email = '{$email}'");
                               if (mysqli_num_rows($sql3) > 0){
                                   $row = mysqli_fetch_assoc($sql3);
                                   $_SESSION['unique_id'] = $row['unique_id'];// session for each user
                                   echo 1;
                               }

                           }else{
                               echo "something is wrong in the data intri";
                           }
                        }
                    
                    }else{
                        echo "Please select an Image file - png, jpeg, jpg";
                    }
                }else{
                    echo "Please select an image";
                }
            }
        }else{
            echo "$email - This not a valid email!";
        }
    }else{
        echo "All input field are required!";
    }
?>  