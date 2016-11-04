Rails.application.routes.draw do
  get 'welcome/index'

  resources :interfaces, shallow: true do
    resources :sections do
      resources :items
    end
  end

  put 'sectionupdate' => "sections#update"
  put 'itemupdate' => "items#update"


  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# resources :courses, shallow: true do
#   resources :batches do
#     resources :exams
#   end
# end
