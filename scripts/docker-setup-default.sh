#!/usr/bin/env bash

wp core install --url=$WP_URL --title="$WP_TITLE" --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --skip-email
wp theme install astra --activate
wp plugin install astra-sites --activate
wp plugin install wp-mail-smtp --activate
wp config set WPMS_ON true --raw
wp config set WPMS_MAILER smtp
wp config set WPMS_SMTP_HOST "$WPMS_SMTP_HOST"
wp config set WPMS_SMTP_PORT $WPMS_SMTP_PORT --raw
wp config set WPMS_SSL "$WPMS_SSL"
wp config set WPMS_SMTP_AUTH $WPMS_SMTP_AUTH --raw
wp config set WPMS_SMTP_USER $WPMS_SMTP_USER --raw
wp config set WPMS_SMTP_PASS $WPMS_SMTP_PASS --raw
wp config set WPMS_SMTP_AUTOTLS $WPMS_SMTP_AUTOTLS --raw