#!/usr/bin/php -q
<?php

   $x = 4;
   function assignx () { 
      $x = 0;
      print "\$x inside function is $x. <br />\n";
   }
   
   assignx();
   print "\$x outside of function is $x. <br />\n";
?>
