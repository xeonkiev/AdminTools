<?php
$url = "https://raw.github.com/damln/AdminTools/master/all.sh";
$content = file_get_contents($url);
echo $content;
?>