#Rails.application.routes.draw do
RedmineApp::Application.routes.draw do
  match '/csv_file_importer/index', :to => 'csv_file_importer#index', :via => [:get, :post]
  match '/csv_file_importer/match', :to => 'csv_file_importer#match', :via => [:get, :post]
  match '/csv_file_importer/match_issue', :to => 'csv_file_importer#match_issue', :via => [:get, :post]
  match '/csv_file_importer/time_entry', :to => 'csv_file_importer#time_entry', :via => [:get, :post]
  match '/csv_file_importer/result', :to => 'csv_file_importer#result', :via => [:get, :post]
  match '/csv_file_importer/result_issue', :to => 'csv_file_importer#result_issue', :via => [:get, :post]
  match '/csv_file_importer/result_time_entry', :to => 'csv_file_importer#result_time_entry', :via => [:get, :post]
end
