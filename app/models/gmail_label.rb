class GmailLabel < ActiveRecord::Base
  has_many :email_folder_mappings,
           :as => :email_folder,
           :dependent => :destroy
  has_many :emails, :through => :email_folder_mappings
  
  has_many :email_threads,
           :through => :emails
end
