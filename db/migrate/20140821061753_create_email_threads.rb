class CreateEmailThreads < ActiveRecord::Migration
  def change
    create_table :email_threads do |t|
      t.text :uid

      t.timestamps
    end
  end
end
