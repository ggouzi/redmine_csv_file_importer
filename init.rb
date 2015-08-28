require 'redmine'

Redmine::Plugin.register :importer do
  name 'Issue Importer'
  author 'Dany Poupard'
  description 'Import csv files to add several issues and time_entries at once. This plugin requires iconv and csv gems.'
  version '2.0.0'
  url 'https://github.com/ggouzi/csv_file_importer'
  
  requires_redmine :version_or_higher => '3.0.0'
  
  project_module :importer do
    permission :import, :importer => :index
  end
  menu :project_menu, :importer, { :controller => 'importer', :action => 'index' }, :caption => :label_import, :before => :settings, :param => :project_id
  
  settings :partial => 'settings/importer_settings',
    :default => {
      'csv_import_issue_id' => ''
    }
end
