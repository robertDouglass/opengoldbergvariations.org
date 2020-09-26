<?php
header("HTTP/1.0 404 Not Found"); //IMPORTANT: we need to return the correct HTTP status code.
?>
{{ define "main" }}

<section id="404">
    <p>This is not the page you are looking for...</p>
</section>

{{ end }}