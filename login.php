
<?php
    include_once "header.php";
?>
<body>
    <div class="wrapper">
        <section class="form login">
            <header>Contravel Chat App</header>
            <form action="#">
                <div class="error-txt"></div>
                    <div class="field input">
                        <label for="Email">Email</label>
                        <input type="text" name="email" placeholder="Enter your Email">
                    </div>
                    <div class="field input">
                        <label for="Password">Password</label>
                        <input type="password" name="password" placeholder="Enter your Password">
                        <i class="fas fa-eye"></i>
                    </div>
                    <div class="field button">
                        <input type="submit" value="Continue to Chat">
                    </div>                
            </form>
            <div class="link">Not signed up? <a href="index.php">signup now</a></div>
        </section>
    </div>
    <script src="./javascript/pass-show-hide.js"></script>
    <script src="./javascript/login.js"></script>
</body>
</html>