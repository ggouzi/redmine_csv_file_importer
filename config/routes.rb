#Rails.application.routes.draw do
RedmineApp::Application.routes.draw do
  match '/importer/index', :to => 'importer#index', :via => [:get, :post]
  match '/importer/match', :to => 'importer#match', :via => [:get, :post]
  match '/importer/match_issue', :to => 'importer#match_issue', :via => [:get, :post]
  match '/importer/time_entry', :to => 'importer#time_entry', :via => [:get, :post]
  match '/importer/result', :to => 'importer#result', :via => [:get, :post]
  match '/importer/result_issue', :to => 'importer#result_issue', :via => [:get, :post]
  match '/importer/result_time_entry', :to => 'importer#result_time_entry', :via => [:get, :post]
end
