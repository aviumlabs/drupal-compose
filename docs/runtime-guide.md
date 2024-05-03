# Drupal Compose Runtime Configuration Guide


## Initial Configuration


After completing the post installation setup; access the Drupal 
configuration at http://localhost:8080.


1. Choose language
   "Language of Choice"
   Select Save and continue
2. Choose profile
   Standard
   Install with commonly used features pre-configured
   Select Save and continue 
3. Verify requirements
   Automatically skipped
4. Set up database
   Select PostgreSQL
   Database name: postgres
   Database username: postgres
   Database password: `copy from secret file`
   Select Advanced options
   Change Host: from `localhost` to `db`
   Set table name prefix: drupal_
   Select Save and continue
5. Install site
   Automatically completed
6. Configure site
   SITE INFORMATION
     Site name: `<site_name>`
     Site email address: `<email_address>`
   SITE MAINTENANCE ACCOUNT 
     Username: `<enter_username>`
     Password: `<password>`
     Confirm password: `<password>`
     Email address: `<email_address>`
   REGIONAL SETTINGS
     Default country: `<country>` 
     Default time zone: `<time zone>`
  UPDATE NOTIFICATIONS
     Check for updates automatically: uncheck
     Receive email notifications: uncheck
  Select Save and continue


### 1 Choose language


![choose language image](./image/drupal_1_choose_language "Choose language")


### 2 Choose profile


![choose profile image](./image/drupal_2_choose_profile "Choose profile")


### 4 Set up database


![set up database image](./image/drupal_4_set_up_database "Set up database")

![set up database image 2](./image/drupal_4_set_up_database_2 "Set up database continued")

![set up database advance image](./image/drupal_4_set_up_database_advance "Set up database advance options")


### 6 Configure site


![configure site image](./image/drupal_6_configure_site "Configure site")

![configure site image 2](./image/drupal_6_configure_site_2 "Configure site continued")

![configure site image 3](./image/drupal_6_configure_site_3 "Configure site continued")


### Drupal Landing Page


![drupal landing page image](./image/drupal_landing_page "Drupal landing page")


## Installing Simple Oauth


1. Select Extend
   Scroll down to __Authentication__
2. Select Simple OAuth & OpenID Connect
   Select Install
5. Some requied modules must be enabled
   Select Continue



### Restart Docker Drupal Services
