class EmailFolderMapping < ActiveRecord::Base
  belongs_to :email
  belongs_to :email_thread
  belongs_to :email_folder, polymorphic: true
end
