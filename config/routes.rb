ChosenSelectBoxWithRails4::Application.routes.draw do
  resources :users, :only => [:show] do
    member do
      put 'update_skills_users' => 'users#update_skills_users', :as => :update_skills_users
    end  
  end
end