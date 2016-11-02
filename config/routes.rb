Rails.application.routes.draw do
  get 'welcome/index'

  resources :interfaces do
    resources :sections
  end

  put 'sectionupdate' => "sections#update"

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# resources :courses, shallow: true do
#   resources :batches do
#     resources :exams
#   end
# end
