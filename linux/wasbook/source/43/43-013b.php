<?php
?>
<body>
<input type="hidden" id="familyname" value="<?php
 echo htmlspecialchars($_GET['name'], ENT_COMPAT, 'UTF-8'); ?>">

<script src="jquery-1.4.4.min.js"></script>
你好<span id="name"></span>
<script>
  var familyname = document.getElementById('familyname').value;
  $('#name').text(familyname);
</script>
</body>
