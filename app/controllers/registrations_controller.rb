class RegistrationsController < Devise::RegistrationsController
    
    protected
    def update_ressource()
        ressource.update_without_password(params)
    end
    
end