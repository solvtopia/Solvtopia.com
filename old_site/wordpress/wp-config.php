<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'solvtopia_wordpress_0');

/** MySQL database username */
define('DB_USER', 'solvt_wordpres_8');

/** MySQL database password */
define('DB_PASSWORD', '86oHu9CY#x');

/** MySQL hostname */
define('DB_HOST', 'localhost:3306');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '4grcTtCOoMJ^rPUs%ZxV*muw6IbO!NLjb%fboqzRr(pdVomcuR%hSfBYcAZ35@Ra');
define('SECURE_AUTH_KEY',  '79CwYmnskojl!P5YLjb8316c0NSOb!&K7J0VwZY^M!k@aKtmD6&a2VoK%fRVmMdq');
define('LOGGED_IN_KEY',    'XZH58X5bUF8@mqyHl^sr!mB19)cmNcC&RFoeMyCk@o(5tr8uEHKeIgKji#iI6i57');
define('NONCE_KEY',        'mqo!w*BU^^&P%17h4@q3UYd#tOCUTr39yTkpFYyDV@s*QVMSk##ARgS7ParA5Tuf');
define('AUTH_SALT',        'VjmTXbqmH^ohz&i@BtM9!4i3xH&sOlkTXY%9tW#qknLBPKZb#1D%qHqUNHPIMvly');
define('SECURE_AUTH_SALT', 'jhNBZqrIcDaSqcc#dXCu%7kvF6hlNSlw#aO5fnFFT)9Yun*ku3Excj5kqwnYrN)9');
define('LOGGED_IN_SALT',   'cFeSqtBk(g%^RVjzdvBo4vtC(wmPEn&TsuCEBAuU5KMvupQFLIdu%^MaOn*)Ir@m');
define('NONCE_SALT',       'KxB)y%^11moAx5GeSy0(@jxvSMfAdnDi!udy4@PK)S*q(oIIlFhjlVj^KLzavnaf');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

define( 'WP_ALLOW_MULTISITE', true );

define ('FS_METHOD', 'direct');
?>