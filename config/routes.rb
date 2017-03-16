Rails.application.routes.draw do
  # Routes for the Debt resource:
  # CREATE
  get "/debts/new", :controller => "debts", :action => "new"
  post "/create_debt", :controller => "debts", :action => "create"

  # READ
  get "/debts", :controller => "debts", :action => "index"
  get "/debts/:id", :controller => "debts", :action => "show"

  # UPDATE
  get "/debts/:id/edit", :controller => "debts", :action => "edit"
  post "/update_debt/:id", :controller => "debts", :action => "update"

  # DELETE
  get "/delete_debt/:id", :controller => "debts", :action => "destroy"
  #------------------------------

  # Routes for the Payment resource:
  # CREATE
  get "/payments/new", :controller => "payments", :action => "new"
  post "/create_payment", :controller => "payments", :action => "create"

  # READ
  get "/payments", :controller => "payments", :action => "index"
  get "/payments/:id", :controller => "payments", :action => "show"

  # UPDATE
  get "/payments/:id/edit", :controller => "payments", :action => "edit"
  post "/update_payment/:id", :controller => "payments", :action => "update"

  # DELETE
  get "/delete_payment/:id", :controller => "payments", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
