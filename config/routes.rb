class SubdomainConstraint
  def self.matches?(request)
    subdomains = %w{ www admin }
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end
end

Rails.application.routes.draw do
  

  get 'home/index'
  get 'admin/index'
  get 'real-estate', to: 'real_estate#index'
  get 'travel', to: 'travel#index'
  get 'health', to: 'health#index'
  get 'ecommerce', to: 'ecommerce#index'

  devise_for :users

  constraints SubdomainConstraint do
    resources :products
    get 'admin', to: 'admin#index'
    get '/', to: 'main#index'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
