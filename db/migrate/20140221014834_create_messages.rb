class CreateMessages < ActiveRecord::Migration
  def change
  end
  def up
  	create_table :messages do |t|
  		#id created automatically and is primary_key
      t.integer :thread_id
      t.integer :thread_length
      t.integer :note_id
      t.integer :sender_user_id
      t.integer :reciever_user_id
      t.text :message_content
      t.timestamps
    end
  end


  def down
  	drop_table :messages
  end
end
