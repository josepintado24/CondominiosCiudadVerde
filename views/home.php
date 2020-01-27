<?php
$template='
<article>
    <h1>Hola <b>%s</b>, bienvenid@</h1>    
</article>
    
';
printf($template,$_SESSION['nombre']);


