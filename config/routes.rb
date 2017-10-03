Rails.application.routes.draw do
 
  scope path: "api" do 
    resources :artists do 
      resources :gigs
    end
  end


  get 'artists/:id/gigs' => 'artists#gigs'

end
