FROM wordpress:6.1.1-php8.0-apache

# Add WP-CLI
RUN curl -o /bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x /bin/wp

# Remove all default themes and plugins
RUN rm -rf /usr/src/wordpress/wp-content/plugins/akismet && \
    rm -rf /usr/src/wordpress/wp-content/plugins/hello.php && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentynineteen && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentytwenty && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentytwentyone && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentytwentytwo

# Block WordPress xmlrpc.php requests
RUN echo '' >> /usr/src/wordpress/.htaccess && \
    echo '# BEGIN: Disable XML-RPC' >> /usr/src/wordpress/.htaccess && \
    echo '<Files xmlrpc.php>' >> /usr/src/wordpress/.htaccess && \
    echo 'order deny,allow' >> /usr/src/wordpress/.htaccess && \
    echo 'deny from all' >> /usr/src/wordpress/.htaccess && \
    echo '</Files>' >> /usr/src/wordpress/.htaccess && \
    echo '# END: Disable XML-RPC' >> /usr/src/wordpress/.htaccess && \
    echo '' >> /usr/src/wordpress/.htaccess

# Add custo php ini config
COPY custom.ini $PHP_INI_DIR/conf.d/
