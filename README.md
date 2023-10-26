# Migrating Drupal to Wordpress
Demonstration of migrating Drupal 6 excerpt and content to latest version of Wordpress.

## Installation

### Download Drupal executable files
In the project directory, download the Drupal executable files from the Drupal website.  The following commands will download the Drupal v6.38.

```bash
curl -O https://ftp.drupal.org/files/projects/drupal-6.38.tar.gz
tar -xzf drupal-6.38.tar.gz
```

### Start Docker containers
In the project directory, start the Docker containers.

```bash
docker-compose up -d
```

Now, the Drupal website is available at http://localhost:8080. The Wordpress is available at http://localhost:8081.

### Copy Drupal settings file
For the first time accessing Drupal, if there is a following error

```text
The Drupal installer requires that you create a settings file as part of the installation process. Copy the ./sites/default/default.settings.php file to ./sites/default/settings.php.
```

Copy the Drupal settings file to the Drupal executable files directory.

```bash
cp drupal-6.38/sites/default/default.settings.php drupal-6.38/sites/default/settings.php
```

### Install Wordpress plugin
Install the [FG Drupal to WordPress](https://wordpress.org/plugins/fg-drupal-to-wp/) plugin.

### Migrate Drupal to Wordpress
Follow the plugin instructions and Drupal pages and stories will be migrated to Wordpress pages and posts respectively.

## References

### Drupal-generated tables

```text
access
actions
actions_aid
authmap
batch
blocks
blocks_roles
boxes
cache
cache_block
cache_filter
cache_form
cache_menu
cache_page
comments
files
filter_formats
filters
flood
history
menu_custom
menu_links
menu_router
node
node_access
node_comment_statistics
node_counter
node_revisions
node_type
permission
role
semaphore
sessions
system
term_data
term_hierarchy
term_node
term_relation
term_synonym
url_alias
users
users_roles
variable
vocabulary
vocabulary_node_types
watchdog
```

### Wordpress-generated tables

```text
wp_commentmeta
wp_comments
wp_links
wp_options
wp_postmeta
wp_posts
wp_term_relationships
wp_term_taxonomy
wp_termmeta
wp_terms
wp_usermeta
wp_users
```
