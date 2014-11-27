class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.belongs_to :email_thread

      t.text :uid
      t.text :draft_id
      t.text :message_id

      t.timestamps
    end
  end
end
