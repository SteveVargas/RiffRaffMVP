class CreateServiceOfferings < ActiveRecord::Migration
  def change
  end

  def up
  	create_table :offerings do |t|
  		#id created automatically and is primary_key
      t.integer :provider_id
      t.string :category
      t.text :description
      t.string :location #will be serialized hash
      	# in class definition for model, serialize :location
      	# {:street_address, :city, :state, :zip}
      t.string :photos #will be serialized array
      	# in class definition for model, serialize :photos
      	# will be an array of file names to photos
      t.float :cost
      t.integer :calendar_id
      t.string :reviews #will be serialized array of hashes
      	# in class definition for model, serialize :reviews
      	# {:reviewer_id, :review_date: :review_text}
      t.string :ratings #will be serialized array of hashes
      	# in class definition for model, serialize :ratings
      	# {:rater_id, :rating_id, :rating_score}
    end
  end


  def down
  	drop_table :offerings
  end
end
