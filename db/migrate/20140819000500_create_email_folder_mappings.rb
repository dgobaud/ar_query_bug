class CreateEmailFolderMappings < ActiveRecord::Migration
  def change
    create_table :email_folder_mappings do |t|
      t.belongs_to :email
      t.belongs_to :email_folder, polymorphic: true
      t.belongs_to :email_thread, :index => true
      
      t.timestamps
    end
  end
end
