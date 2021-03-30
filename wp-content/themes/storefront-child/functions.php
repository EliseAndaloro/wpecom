<?php

function wpm_enqueue_styles(){
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );
}

add_action( 'wp_enqueue_scripts', 'wpm_enqueue_styles' );

// Add input to checkout form WooCommerce
function display_custom_shipping_methods() {
	?>
	
    <fieldset class="extra-fields">
		<p>
			<label for="ea-username-order">
                Username
			</label>
            <input type="text" name="ea-username-order" id="ea-username-order" />
		</p>
	</fieldset>
	<?php
}
add_action( 'woocommerce_checkout_billing', __NAMESPACE__ . '\\display_custom_shipping_methods', 10 );

// Allow WooCommerce to see our new input
function add_custom_checkout_data_to_order_data_array( $data ) {
	$custom_keys = [
		'ea-username-order'
	];

	foreach ( $custom_keys as $key ) {
		if ( isset( $_POST[ $key ] ) ) {
			$data[ $key ] = sanitize_text_field( $_POST[ $key ] );
		}
	}

	return $data;
}
add_filter( 'woocommerce_checkout_posted_data', __NAMESPACE__ . '\\add_custom_checkout_data_to_order_data_array', 10, 2 );

// Save value from our new input
function save_custom_checkout_data_in_order_metadata( $order_id, $data ) {
	$custom_keys = [
		'ea-username-order'
	];

	$order = wc_get_order( $order_id );
	foreach ( $custom_keys as $key ) {
		if ( isset( $data[ $key ] ) ) {
			$order->add_meta_data( $key, $data[ $key ] );
		}
	}

	$order->save();
}
add_action( 'woocommerce_checkout_update_order_meta', __NAMESPACE__ . '\\save_custom_checkout_data_in_order_metadata', 10, 2 );
