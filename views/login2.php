<form class="item" method="post">
    <div class="p_25">
        <input type="text" name="dni" placeholder="DNI" required>
    </div>

    <div class="p_25">
        <input type="submit" class="button" value="Entrar">
    </div>
    
</form>
<?php

    if (isset($_GET['error'])){?>
        <div >
            <p >
                 <?php print $_GET['error']; ?>
            </p>
        </div>
    <?php } ?>

