module Commentable 
    extend ActiveSupport::Concern

    included do
        before_action :authenticate_user!, unless: :devise_controller?
    end 

    def create 
    end

end