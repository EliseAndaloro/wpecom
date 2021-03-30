
<h1><?php echo __( 'Message dashboard', 'message-dashboard' ); ?></h1>

<form action="#" method="POST">
    <?php wp_nonce_field('update-message', 'check-message'); ?>
    <label for="on_off">Afficher le message</label>
    <input type="checkbox" name="on_off" value="activate"<?php if($active_flag !=0){ echo "checked";}?>>

    <label for="message">Saisir le message désiré : </label>
    <input type="text" name="message" value="<?php echo $message;?>"/>

    <input type="submit" name="update_message_dashboard" value="Mettre à jour"/>
</form>
