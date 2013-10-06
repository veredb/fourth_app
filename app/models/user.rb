class User < ActiveRecord::Base
#    after_create { Notifier.welcome_email(self).deliver }
    
    has_one :status, :foreign_key => "user_id"
end
