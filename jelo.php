<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/normalize.min.css">
        <link rel="stylesheet" href="css/main.css">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <div class="header-container">
		
            <header class="wrapper clearfix">
				<h1 class="logo"><img src="img/logo.PNG"></h1>
            </header>
        </div>

        <div class="main-container">
            <div class="main wrapper clearfix">
                <article>
                    <header class="jezik">
						<center><?php
						if (isset($_GET['lan'])) {
							$lang = $_GET['lan'];
							}
							else{$lang = "en";}
							$link = "index.php?lan=$lang";
							echo "<a href='".$link."'><h1>MENI GALJUN</h1></a>"; ?></center>
                    </header>
					<section>
						<?php
							$id = $_GET['id'];
							$lang = $_GET['lan'];
							$con=mysqli_connect('localhost','root','root','galjun') or die('Error connecting to MySQL server.');
							if(isset($lang) && $lang == "hr"){
							$upit="SELECT * FROM opisjela";
							}
							else{
							$upit="SELECT * FROM mealdescription";
							}
							$result = mysqli_query($con, $upit);
					
							while($row = mysqli_fetch_array($result)) {
							if(($row['IDmeal']==$id)){
							$cijena=$row['mealPrice'];
							$jelo=$row['mealName'];
							$opis=$row['mealDescr'];
							$slika=$row['slika'];
								}
							}
							echo "<h1>$jelo</h1>";
							echo "<img src='$slika'>";
							echo "<p>$opis</p>";
							echo "<p>$cijena</p>";
	
				mysqli_close($con);
				?> 
				
					</section>


                </article>


            </div>
        </div> 


        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="js/main.js"></script>

        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X','auto');ga('send','pageview');
        </script>
    </body>
</html>
