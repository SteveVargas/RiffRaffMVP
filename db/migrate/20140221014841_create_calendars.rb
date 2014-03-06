class CreateCalendars < ActiveRecord::Migration
  def change
  end

  def up
  	create_table :providercals do |t|
  		#id created automatically and is primary_key
  		t.integer :provider_id
  		t.string :booked_services #array of service_ids
    end

    create_table :memberercals do |t|
  		#id created automatically and is primary_key
  		t.string :booked_services #array of service_ids
    end

    create_table :offeringcals do |t|
  		#id created automatically and is primary_key
  		t.string :booked #array of service_ids
  		t.string :pending #array of service_ids
  		t.string :available #array of hashes
  			#{:datetime, :offering_id}
    end
  end


  def down
  	drop_table :providercals
  	drop_table :memberercals
  	drop_table :offeringcals
  end


end
