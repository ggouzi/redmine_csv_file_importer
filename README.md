Redmine Issue Importer plugin for Rails 4.x
================

This Redmine plugin allows importing issues and time_entries in bulk from csv files. Fields will default to name-based mapping but can be overridden at the confirmation screen.
Existing issues can be updated, and issue relationships and custom fields are supported.
The database is used for intermediate storage.

## Requirements

* Redmine 3.0.0 (Rails 4.x)
* csv gem
* tempfile gem (already added your Gemfile with Redmine 3.0.0)
* iconv gem (deprecated since Ruby 1.9.3)
	
## Installation and Setup

To install:
* Install gems if not present in your Gemfile by adding these lines at the end of your Gemfile :
`gem "spreadsheet"`
`gem "iconv"`

Then run :
`bundle install`
 
If you can't install iconv because it can't build native extensions make sure you've installed all packages required.
If not, take a look at this page http://www.nokogiri.org/tutorials/installing_nokogiri.html
(This is a recurrent problem. Same issue with nokogiri gem and iconv gem)

Example with Centos 5.11:
`yum install -y gcc ruby-devel zlib-devel`

* Download the plugin to your vendors/plugins directory
* Rename the plugin folder to "importer"
* Run 'bundle exec rake db:migrate_plugins RAILS_ENV=production'
* Restart your redmine as appropriate

To setup :
* Select a project and clic on "Configuration" →  "Modules", then enable importer plugin.
* Set permissions according to your needs
* To import time entries, you need to define an issue customized field whose name must be "CSV-IMP-ID" and assign it to appropriates trackers. This customize field is used to bind issues with csv file.

## CSV file format

Lines :
* One header row.
* One or more data rows.

Field separator : what you want !!

Field delimiter : what you want !!

Known encodings :
* UTF-8
* ISO8859-1 (latin1)
* ISO8859-15 (latin9)
* EUC
* SJIS


## For issues import

User documentation for this part https://github.com/leovitch/redmine_importer/wiki.

Example :

- Column 1 - Subject

- Column 2 - Description

- Column 3 - Assigned To

- Column 4 - Fixed version

- Column 5 - Author

- Column 6 - Category

- Column 7 - Priority

- Column 8 - Status

- Column 9 - Start date

- Column 10 - Due date

- Column 11 - Done Ratio

- Column 12 - Estimated hours

- Column 13 - Watchers

"Subject","Description","Assigned To","Fixed version","Author","Category","Priority","Status","Start date","Due date","Done Ratio","Estimated hours","Watchers"

"A subject","A description","admin","A target version","admin","Default","High","New",2011-05-01,2011-08-28,25,200,"test1,test2"

**Here, the character ',' is the Field separator**

**Here, the character '"' " is the Field delimiter**

## For time entries import

Example :

- Column 1 - Issue id

- Column 2 - Time Entry comment (optional)

- Column 3 - Date spent on e.g. YYYY-MM-DD

- Column 4 - Activity name

- Column 5 - Number of hours

- Column 6 - User login

You can add optional fields (make sure they'll be matched with the right field in the table).

"Issue","Comments","Activity","spent_on","Hours","User","other_field"

"10555",A comment","An activity name",2015-08-27,8,admin,"other_value"

**Here, the character ',' is the Field separator**

**Here, the character '"' " is the Field delimiter**

## Tests

Some files were added to help you to understand how this plugin works. They are in the folder "Tests plugin import csv"

## Localizations

de, en, fr, ja, pt-BR, ru, zh localizations included.

## Licence

This plugin is licensed under the GNU GPL v2. See COPYRIGHT.txt and GPL.txt for details.

## Credits

This plugin was created by merging two plugins :
* Redmine Issue Importer plugin (https://github.com/yoshidayo/redmine_importer) which allows you to import issues from csv files.
Compatible with Rails 4.x.
It is an improvment of the plugin Redmine Issue Importer plugin (https://github.com/leovitch/redmine_importer)
* Redmine Csv File Importer plugin (https://github.com/danypoup/redmine_csv_file_importer)
with which you can import issues and time entries from csv files for Rails 2.x
It is a mix between the Redmine Issue Importer plugin (https://github.com/leovitch/redmine_importer) and the Bulk Time Entry Plugin (https://github.com/edavis10/redmine-bulk_time_entry_plugin), plus some minor improvements.

Thanks to their creator : Yoshidayo, Dany Poupard, Leo Hourtvitz and Eric Davis.