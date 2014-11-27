class Email < ActiveRecord::Base
  belongs_to :email_thread

  has_many :email_folder_mappings,
           :dependent => :destroy
  has_many :imap_folders, :through => :email_folder_mappings, :source => :email_folder, :source_type => 'ImapFolder'
  has_many :gmail_labels, :through => :email_folder_mappings, :source => :email_folder, :source_type => 'GmailLabel'
  
  has_many :email_attachments,
           :dependent => :destroy
end
