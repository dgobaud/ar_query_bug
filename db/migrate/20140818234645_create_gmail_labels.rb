class CreateGmailLabels < ActiveRecord::Migration
  def change
    create_table :gmail_labels do |t|
      t.belongs_to :gmail_account

      t.text :label_id
      t.text :name

      t.timestamps
    end
  end
end
