Rails.application.routes.draw do
  devise_for :users
  root to: "healths#index"
  resources :healths do
    resources :cares , only: [:index , :new , :create , :destroy ]
      # 検索メソッド機能の付与は今後の課題
    collection  do
      get 'search'
    end
  end

  resources :users , only: :show

end


