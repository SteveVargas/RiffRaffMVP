class CreateUsers < ActiveRecord::Migration
  def change
  end

  def up
  	create_table :users do |t|
  		#id created automatically and is primary_key
      t.string :user_type
      t.string :status
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :zipcode
      t.string :categories   #will be serialized array
      	# in class definition for model, serialize :categories
      	# then just add categories as an array when saving an array to the column
      t.timestamps
      	#created_at
      	#update_at
    end

    add_index :users, :email, unique: true

  end


  def down
  	drop_table :users
  end
end
