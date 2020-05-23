Rails.application.routes.draw do
  root "members#member_list"
  
  get 'members/join_form' => "members#join_form"
  post 'members/join' => "members#join"
  get 'members/m_form/:id' => "members#m_form"
  post 'members/j_update/:id' => "members#j_update"
  get 'members/member_list' => "members#member_list"
  get 'members/member_show' => "members#member_show"
  get 'members/member_delete' => "members#member_delete"
  
  post 'members/visit' => "members#visit"
  get 'members/visit' => "members#visit"
  get 'members/visit_button/:num' => "members#visit_button"
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
