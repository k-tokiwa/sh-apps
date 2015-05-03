#!/bin/bash

wp plugin activate error-log-monitor --network
wp plugin activate theme-check --network
wp plugin activate jetpack --network

wp plugin install google-sitemap-generator
wp plugin install pushpress
wp plugin install wpmandrill --activate-network

wp plugin install twitter
wp plugin install facebook
wp plugin install slack

wp plugin install broken-link-checker
wp plugin install wp-basic-auth
wp plugin install wordfence --activate-network
wp plugin install backwpup --activate-network
wp plugin install video-thumbnails

wp theme install wp-jurist
wp theme install hueman
wp theme install flower
