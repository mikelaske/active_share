Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users

  root 'groups#index'

  # Routes for the Fund resource:
  # CREATE
  get "/funds/new", :controller => "funds", :action => "new"
  # post "/create_fund", :controller => "funds", :action => "create"

  # READ
  get "/funds", :controller => "funds", :action => "index"
  get "/funds/:id", :controller => "funds", :action => "show"

  # UPDATE
  get "/funds/:id/edit", :controller => "funds", :action => "edit"
  post "/update_fund/:id", :controller => "funds", :action => "update"

  # DELETE
  # get "/delete_fund/:id", :controller => "funds", :action => "destroy"
  #------------------------------

  # Routes for the Group resource:
  # CREATE
  get "/groups/new", :controller => "groups", :action => "new"
  post "/create_group", :controller => "groups", :action => "create"

  # READ
  get "/groups", :controller => "groups", :action => "index"
  get "/groups/:id", :controller => "groups", :action => "show"

  # UPDATE
  get "/groups/:id/edit", :controller => "groups", :action => "edit"
  post "/update_group/:id", :controller => "groups", :action => "update"

  # DELETE
  get "/delete_group/:id", :controller => "groups", :action => "destroy"
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

end
