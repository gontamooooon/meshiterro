Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htconfig.hosts << "b447a802306146c89493ff60bb4de5f4.vfs.cloud9.us-east-1.amazonaws.com"
 root to: 'homes#top'
 resources :post_images, only: [:new, :create, :index, :show, :destroy]do
     resource :favorites, only: [:create, :destroy]
     resources :post_comments, only: [:create , :destroy]
 end
 resources :users, only: [:show, :edit, :update]
 get 'homes/about' => 'homes#about' ,as: 'about'
end
