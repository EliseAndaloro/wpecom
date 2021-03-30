<?php
/*
Plugin Name: Message dashboard
Description: Affiche un message sur la page mon compte. Message paramétrable depuis le backoffice WP
Author: EA
*/

define('MESSAGE_DASHBOARD_PLUGIN_DIR_PATH', plugin_dir_path( __FILE__ ));

class ShowMessageOnDashboard {

    public $pluginTitle = "Message dashboard";
    public $pluginSlug = "message-dashboard-settings";
    public $pluginId = "message-dashboard";

    
    public function __construct(){
        add_action('admin_menu', [$this, 'admin_show_message_on_dashboard']);
        register_activation_hook( __FILE__, array( $this, 'create_messages_table' ) );
        add_action('woocommerce_account_content', [$this,'update_message_on_dashboard']);
    }

    /**
     * If it doesn't exist, creation of the table "messages" when the plugin is activated 
     */
    public function create_messages_table(){
        global $wpdb;
        $charset_collate = $wpdb->get_charset_collate();
        $messages_table_name = $wpdb->prefix . 'messages';
        $messages_sql = "CREATE TABLE IF NOT EXISTS $messages_table_name (
        	id mediumint(9) NOT NULL AUTO_INCREMENT,
        	message varchar(45) DEFAULT NULL,
        	active_flag boolean DEFAULT false,
        	PRIMARY KEY  (id)
        ) $charset_collate;";
        require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
        dbDelta($messages_sql);
    }

    /** 
    * Add Plugin's Menu Page
    */
    public function admin_show_message_on_dashboard(){
        add_menu_page(
            __($this->pluginTitle, 'message-dashboard'), // Page title
            __($this->pluginTitle, 'message-dashboard'), // Menu title
            'manage_options',  // Capability
            $this->pluginSlug, // Slug
            [ &$this, 'load_message_dashboard_page'] // Callback page function
        );
    }

    /**
     * Include Admin page settings file
     */
    public function load_message_dashboard_page(){
        // Get the last insert id
        global $wpdb;
        $table_name='wp_messages';
        $results = $wpdb->get_results("SELECT * FROM $table_name ORDER BY ID DESC LIMIT 1");
        $message = $results[0]->message;
        $active_flag = $results[0]->active_flag;

        // Show template
        require_once MESSAGE_DASHBOARD_PLUGIN_DIR_PATH . 'views/admin_settings.php';

        // If form is submitted
        if(isset($_POST['check-message'])  && isset($_POST['message'])){
            // Call function to save datas in db
            $this->save_datas_in_messages_table($_POST);
        }
    }

    /**
     * Save message in DB
     */
    public function save_datas_in_messages_table($datas){
        $active_flag = 0;
        if($datas['on_off'] != null){
            $active_flag = 1;
        }

        global $wpdb;
        $wpdb->insert('wp_messages', array(
            'message' => $datas['message'],
            'active_flag' => $active_flag
        ));
        
    }

    /**
     * Update view "Mon compte" with message
     */
    public function update_message_on_dashboard(){

        global $wpdb;
        $table_name='wp_messages';

        // Get the last insert id
        $results = $wpdb->get_results("SELECT * FROM $table_name ORDER BY ID DESC LIMIT 1");

        if($results[0]->active_flag != 0){
            echo "<h3>".$results[0]->message."</h3>";
        }
    }
}

new ShowMessageOnDashboard();