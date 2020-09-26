<?php
header("HTTP/1.0 404 Not Found"); //IMPORTANT: we need to return the correct HTTP status code.
?>
<html>
  <head>
    <style>
        /* simple styling to center the text vertically and horizontally */
        html, body, .container {
            height: 100%;
        }
        .container {
            display: -webkit-flexbox;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-flex-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
            justify-content: center;
        }
    </style>
  </head>
  <body>
    <div class="container"> 
      <p>Hi there, it looks like we can't find the page you are looking.</p>
      <p class="suggestions">
        <?php
        /*
        Add logic here that uses the PHP $_SERVER variable 
        to determine the user intent and display some suggestions
        $_SERVER['QUERY_STRING']; 
        */
        ?>
      </p>
      <p>Want to <a href="/">go back to the home page?</a></p>
    </div>
  </body>
</html>