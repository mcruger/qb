class CreateQuestions < ActiveRecord::Migration
  def change

    create_table :questions do |t|
      t.text :question
      t.belongs_to :game
      t.timestamps
    end
 
  	create_table :answers do |t|
  		t.belongs_to :question
  		t.text :answer
  		t.boolean :is_correct
  		t.timestamps
  	end	

  	create_table :users do |t|
  		t.string :username
  		t.string :email
  		t.string :first
  		t.string :last
      t.integer :age
  		t.integer :high_score
  		t.integer :ranking
  		t.string :city
  		t.string :state
      t.string :sex
  		t.integer :zip
      t.string :phone_num
      t.string :display_name
      t.string :display_description
      t.string :add_l1
      t.string :add_l2
  		t.string :password_digest
  		t.text :password_hint
  		t.timestamps
  	end

  	create_table :hosts do |t|
  		t.string :host_name
      t.string :primary_contact_name
  		t.string :email
  		t.string :add_l1
  		t.string :add_l2
  		t.string :city
  		t.string :state
  		t.integer :zip
  		t.integer :game_count
  		t.string :phone_num
      t.string :password
      t.text :password_hint
  		t.timestamps
  	end	

  	create_table :usertypes do |t|
  		t.string :name
  		t.timestamps
  	end	

	create_table :subjects do |t|
		t.string :description
		t.timestamps
	end  	

	create_table :games do |t|
		t.string :name
		t.string :description
    t.belongs_to :user
    t.boolean :started
		t.timestamps
	end	

	#mapping table to map players to games
	create_table :players do |t|
		t.belongs_to :user
		t.belongs_to :game
	end	

	#mapping table to map hosts to games
	create_table :provides do |t|
		t.belongs_to :user
		t.belongs_to :game
    t.boolean :game_running
	end

  #results
  create_table :results do |t|
    t.belongs_to :user
    t.belongs_to :game
    t.integer :score
    t.integer :place
    t.integer :total_players
  end

=begin
    #removed and just use 1 user as host and player...
    create_table :hosts do |t|
      t.string :host_name
      t.string :primary_contact_name
      t.string :email
      t.string :add_l1
      t.string :add_l2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :game_count
      t.string :phone_num
      t.string :password
      t.text :password_hint
      t.timestamps
    end 
    
    create_table :hosttypes do |t|
      t.string :name
      t.timestamps
    end 
=end

  end
end
