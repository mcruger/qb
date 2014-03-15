# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

#need to seed with User.create so has_secure_password methods are picked up
user1 = User.create(username: "carl", 
					email: "carl@example.com",
					first: "Carl",
					last: "Rodriguez",
					age: "27",
					high_score: "7892",
					add_l1: "161 W. Kinzie",
					city: "Chicago",
					state: "IL",
					zip: "60654",
					sex: "Male",
					password: "password", 
					password_confirmation: "password")
user2 = User.create(username: "rob", 
					email: "rob@example.com",
					first: "Rob",
					last: "Rodriguez",
					age: "27",
					high_score: "7792",
					add_l1: "161 W. Kinzie",
					city: "Chicago",
					state: "IL",
					zip: "60654",
					sex: "Male",
					password: "password", 
					password_confirmation: "password")
user3 = User.create(username: "FabulousBobsWomen", 
					email: "bobsgirls@bobspalaceofwings.com",
					first: "Carla",
					last: "Sanchez",
					age: "24",
					high_score: "11242",
					add_l1: "12054 South Doty Road",
					city: "Chicago",
					state: "IL",
					zip: "60628",
					sex: "Female",
					phone: "312-HOT-WING",
					display_name: "Bob's Bar & Grill",
					display_description: "Wings, women and good times!",
					password: "password", 
					password_confirmation: "password")
user4 = User.create(username: "AnnaForHire", 
					email: "anna@example.com", 
					first: "Anna",
					last: "Studebaker",
					age: "35",
					high_score: "13221",
					add_l1: "4003 W. Lake St.",
					city: "Stone Park",
					state: "IL",
					zip: "60165",
					sex: "Female",
					phone: "708.343.2000",
					display_name: "Anna's Firehouse Burgers",
					display_description: "Best burgers in the city!",
					password: "password", 
					password_confirmation: "password")

####################
#QUESTIONS
####################

questions = [
			 {:question => "In which sport would you use a chucker?"},
			 {:question => "What would a tailor do with his hot plonker?"},
			 {:question => "What is an alewife?"},
			 {:question => "How many feet in a fathom?"},
			 {:question => "What does a funambulist do?"},

			 {:question => "What did announcer Jack Brickhouse yell when the Cubs hit a home run?"},
			 {:question => "How many rings on the Olympic flag?"},
			 {:question => "Who was the first man in space?"},
			 {:question => "What would a Scotsman do with a spurtle?"},
			 {:question => "If you had caries who would you consult?"},

			 {:question => "What was George Washington's middle name?"},
			 {:question => "If you were to whip your head back and forth, you would lose approximately how many brain cells per whip?"},
			 {:question => "Which fact about water is untrue?"},
			 {:question => "What is most likely to happen in a horror movie when a girl gets into a car?"},
			 {:question => "The Star Wars series contributed about how much to the personal net worth of George Lucas?"}
			 ]


Question.destroy_all

questions.each do |ques|
    q = Question.new
    q.question = ques[:question]
    q.game_id = 1
	q.save
 end

questions.each do |ques|
    q = Question.new
    q.question = ques[:question]
    q.game_id = 2
	q.save
 end

####################
#ANSWERS
####################

answers = [{:question_id => 1,        #question 1
			:answer => "Badminton",
			:is_correct => 0},
			{:question_id => 1,
			:answer => "Horseback Riding",
			:is_correct => 0},
			{:question_id => 1,
			:answer => "Cricket",
			:is_correct => 1},         
			{:question_id => 1,
			:answer => "Throwing a Rope",
			:is_correct => 0},
			{:question_id => 2,      #question 2
			:answer => "Suring up a seam",
			:is_correct => 0},
			{:question_id => 2,
			:answer => "Putting a fresh crease in pants",
			:is_correct => 0},
			{:question_id => 2,
			:answer => "Ironing some cloth",
			:is_correct => 1},
			{:question_id => 2,
			:answer => "Stretching shrunken clothes",
			:is_correct => 0},
			{:question_id => 3,      #question 3
			:answer => "The wife of a brewer",
			:is_correct => 0},
			{:question_id => 3,
			:answer => "A prairie flower",
			:is_correct => 0},
			{:question_id => 3,
			:answer => "A small fish known to wash up on the beach",
			:is_correct => 1},
			{:question_id => 3,
			:answer => "A nickname for a saloon dancer",
			:is_correct => 0},
			{:question_id => 4,       #question 4
			:answer => "3.5",
			:is_correct => 0},
			{:question_id => 4,
			:answer => "7",
			:is_correct => 0},
			{:question_id => 4,
			:answer => "6",
			:is_correct => 1},
			{:question_id => 4,       
			:answer => "10",
			:is_correct => 0},
			{:question_id => 5,       #question 5
			:answer => "A pathogens specialist",
			:is_correct => 0},
			{:question_id => 5,
			:answer => "A mechanic who works on very large engines",
			:is_correct => 0},
			{:question_id => 5,
			:answer => "A tightrope walker",
			:is_correct => 1},
			{:question_id => 5,       
			:answer => "A childrens birthday party coordinator",
			:is_correct => 0},                  

			{:question_id => 6,       #question 6
			:answer => "Oh yeah!",
			:is_correct => 0},
			{:question_id => 6,
			:answer => "Go Baby Go!",
			:is_correct => 0},
			{:question_id => 6,
			:answer => "Hey Hey!",
			:is_correct => 1},
			{:question_id => 6,       
			:answer => "That's a Dime!",
			:is_correct => 0},
			{:question_id => 7,       #question 7
			:answer => "7",
			:is_correct => 0},
			{:question_id => 7,
			:answer => "8",
			:is_correct => 0},
			{:question_id => 7,
			:answer => "5",
			:is_correct => 1},
			{:question_id => 7,       
			:answer => "6",
			:is_correct => 0},
			{:question_id => 8,       #question 8
			:answer => "Buzz Aldrin",
			:is_correct => 0},
			{:question_id => 8,
			:answer => "Ivan Gregorovich",
			:is_correct => 0},
			{:question_id => 8,
			:answer => "Yuri Gagarin",
			:is_correct => 1},
			{:question_id => 8,       
			:answer => "Buzz Lightyear",
			:is_correct => 0},
			{:question_id => 9,       #question 9
			:answer => "Call his flock of sheep.",
			:is_correct => 0},
			{:question_id => 9,
			:answer => "Ask his wife to go to the bedroom.",
			:is_correct => 0},
			{:question_id => 9,
			:answer => "Stir soup.",
			:is_correct => 1},
			{:question_id => 9,       
			:answer => "Start a war.",
			:is_correct => 0},
			{:question_id => 10,       #question 10
			:answer => "A medical doctor.",
			:is_correct => 0},
			{:question_id => 10,
			:answer => "Your mother.",
			:is_correct => 0},
			{:question_id => 10,
			:answer => "A dentist.",
			:is_correct => 1},
			{:question_id => 10,       
			:answer => "A psychologist.",
			:is_correct => 0},

			{:question_id => 11,       #question 11
			:answer => "James",
			:is_correct => 0},
			{:question_id => 11,
			:answer => "Walter",
			:is_correct => 0},
			{:question_id => 11,
			:answer => "He did not have one.",
			:is_correct => 1},
			{:question_id => 11,       
			:answer => "Carver",
			:is_correct => 0},
			{:question_id => 12,       #question 12
			:answer => "8",
			:is_correct => 0},
			{:question_id => 12,
			:answer => "16",
			:is_correct => 0},
			{:question_id => 12,
			:answer => "24",
			:is_correct => 1},
			{:question_id => 12,       
			:answer => "32",
			:is_correct => 0},
			{:question_id => 13,       #question 13
			:answer => "Water can be chemically synthesized by burning rocket fuel.",
			:is_correct => 0},
			{:question_id => 13,
			:answer => "Water is the leading cause of drowning.",
			:is_correct => 0},
			{:question_id => 13,
			:answer => "Water was found in very small pockets on the sun.",
			:is_correct => 1},
			{:question_id => 13,       
			:answer => "100% of all people exposed to water will die.",
			:is_correct => 0},
			{:question_id => 14,       #question 14
			:answer => "She drops the keys.",
			:is_correct => 0},
			{:question_id => 14,
			:answer => "She escapes.",
			:is_correct => 0},
			{:question_id => 14,
			:answer => "The car doesn't start.",
			:is_correct => 1},
			{:question_id => 14,       
			:answer => "Someone is hiding in the back seat.",
			:is_correct => 0},
			{:question_id => 15,       #question 15
			:answer => "500 Million",
			:is_correct => 0},
			{:question_id => 15,
			:answer => "1 Billion",
			:is_correct => 0},
			{:question_id => 15,
			:answer => "2 Billion",
			:is_correct => 0},
			{:question_id => 15,       
			:answer => "3 Billion",
			:is_correct => 1},

			{:question_id => 16,        #question 1
			:answer => "Badminton",
			:is_correct => 0},
			{:question_id => 16,
			:answer => "Horseback Riding",
			:is_correct => 0},
			{:question_id => 16,
			:answer => "Cricket",
			:is_correct => 1},         
			{:question_id => 16,
			:answer => "Throwing a Rope",
			:is_correct => 0},
			{:question_id => 17,      #question 2
			:answer => "Suring up a seam",
			:is_correct => 0},
			{:question_id => 17,
			:answer => "Putting a fresh crease in pants",
			:is_correct => 0},
			{:question_id => 17,
			:answer => "Ironing some cloth",
			:is_correct => 1},
			{:question_id => 17,
			:answer => "Stretching shrunken clothes",
			:is_correct => 0},
			{:question_id => 18,      #question 3
			:answer => "The wife of a brewer",
			:is_correct => 0},
			{:question_id => 18,
			:answer => "A prairie flower",
			:is_correct => 0},
			{:question_id => 18,
			:answer => "A small fish known to wash up on the beach",
			:is_correct => 1},
			{:question_id => 18,
			:answer => "A nickname for a saloon dancer",
			:is_correct => 0},
			{:question_id => 19,       #question 4
			:answer => "3.5",
			:is_correct => 0},
			{:question_id => 19,
			:answer => "7",
			:is_correct => 0},
			{:question_id => 19,
			:answer => "6",
			:is_correct => 1},
			{:question_id => 19,       
			:answer => "10",
			:is_correct => 0},
			{:question_id => 20,       #question 5
			:answer => "A pathogens specialist",
			:is_correct => 0},
			{:question_id => 20,
			:answer => "A mechanic who works on very large engines",
			:is_correct => 0},
			{:question_id => 20,
			:answer => "A tightrope walker",
			:is_correct => 1},
			{:question_id => 20,       
			:answer => "A childrens birthday party coordinator",
			:is_correct => 0},                  

			{:question_id => 21,       #question 6
			:answer => "Oh yeah!",
			:is_correct => 0},
			{:question_id => 21,
			:answer => "Go Baby Go!",
			:is_correct => 0},
			{:question_id => 21,
			:answer => "Hey Hey!",
			:is_correct => 1},
			{:question_id => 21,       
			:answer => "That's a Dime!",
			:is_correct => 0},
			{:question_id => 22,       #question 7
			:answer => "7",
			:is_correct => 0},
			{:question_id => 22,
			:answer => "8",
			:is_correct => 0},
			{:question_id => 22,
			:answer => "5",
			:is_correct => 1},
			{:question_id => 22,       
			:answer => "6",
			:is_correct => 0},
			{:question_id => 23,       #question 8
			:answer => "Buzz Aldrin",
			:is_correct => 0},
			{:question_id => 23,
			:answer => "Ivan Gregorovich",
			:is_correct => 0},
			{:question_id => 23,
			:answer => "Yuri Gagarin",
			:is_correct => 1},
			{:question_id => 23,       
			:answer => "Buzz Lightyear",
			:is_correct => 0},
			{:question_id => 24,       #question 9
			:answer => "Call his flock of sheep.",
			:is_correct => 0},
			{:question_id => 24,
			:answer => "Ask his wife to go to the bedroom.",
			:is_correct => 0},
			{:question_id => 24,
			:answer => "Stir soup.",
			:is_correct => 1},
			{:question_id => 24,       
			:answer => "Start a war.",
			:is_correct => 0},
			{:question_id => 25,       #question 10
			:answer => "A medical doctor.",
			:is_correct => 0},
			{:question_id => 25,
			:answer => "Your mother.",
			:is_correct => 0},
			{:question_id => 25,
			:answer => "A dentist.",
			:is_correct => 1},
			{:question_id => 25,       
			:answer => "A psychologist.",
			:is_correct => 0},

			{:question_id => 26,       #question 11
			:answer => "James",
			:is_correct => 0},
			{:question_id => 26,
			:answer => "Walter",
			:is_correct => 0},
			{:question_id => 26,
			:answer => "He did not have one.",
			:is_correct => 1},
			{:question_id => 26,       
			:answer => "Carver",
			:is_correct => 0},
			{:question_id => 27,       #question 12
			:answer => "8",
			:is_correct => 0},
			{:question_id => 27,
			:answer => "16",
			:is_correct => 0},
			{:question_id => 27,
			:answer => "24",
			:is_correct => 1},
			{:question_id => 27,       
			:answer => "32",
			:is_correct => 0},
			{:question_id => 28,       #question 13
			:answer => "Water can be chemically synthesized by burning rocket fuel.",
			:is_correct => 0},
			{:question_id => 28,
			:answer => "Water is the leading cause of drowning.",
			:is_correct => 0},
			{:question_id => 28,
			:answer => "Water was found in very small pockets on the sun.",
			:is_correct => 1},
			{:question_id => 28,       
			:answer => "100% of all people exposed to water will die.",
			:is_correct => 0},
			{:question_id => 29,       #question 14
			:answer => "She drops the keys.",
			:is_correct => 0},
			{:question_id => 29,
			:answer => "She escapes.",
			:is_correct => 0},
			{:question_id => 29,
			:answer => "The car doesn't start.",
			:is_correct => 1},
			{:question_id => 29,       
			:answer => "Someone is hiding in the back seat.",
			:is_correct => 0},
			{:question_id => 30,       #question 15
			:answer => "500 Million",
			:is_correct => 0},
			{:question_id => 30,
			:answer => "1 Billion",
			:is_correct => 0},
			{:question_id => 30,
			:answer => "2 Billion",
			:is_correct => 0},
			{:question_id => 30,       
			:answer => "3 Billion",
			:is_correct => 1}
			
			]


Answer.destroy_all

answers.each do |ans|
    a = Answer.new
    a.question_id = ans[:question_id]
    a.answer = ans[:answer]
    a.is_correct = ans[:is_correct]
	a.save
 end

####################
#GAMES
####################

games = [
  {
    :name => "Bob's 500 Wing Special Today Only",
    :user_id => 3,
    :description => "Gotta know your wings for the... chicken dinner!",
    :created_at => DateTime.strptime("3/1/2014 19:00", "%m/%d/%Y %H:%M"),
    :updated_at => DateTime.strptime("3/1/2014 19:00", "%m/%d/%Y %H:%M")
  },
  {
    :name => "Anna's Burger Challenge Is ON!",
    :user_id => 4,
    :description => "General trivia - heavy on burgers.",
    :created_at => DateTime.strptime("3/1/2014 19:00", "%m/%d/%Y %H:%M"),
    :updated_at => DateTime.strptime("3/1/2014 19:00", "%m/%d/%Y %H:%M")
  }]

Game.destroy_all

games.each do |game|
    g = Game.new
    g.name = game[:name]
	g.description = game[:description]
	g.user_id = game[:user_id]
	g.created_at = game[:created_at]
	g.updated_at = game[:updated_at]
	g.save
 end

####################
#PROVIDES (user provides a game)
####################

  provides = [
  {
    :user_id => 3,
    :game_id => 1
  },
  {
    :user_id => 4,
    :game_id => 2
  }]

Provide.destroy_all

provides.each do |prov|
	p = Provide.new
	p.user_id = prov[:user_id]
	p.game_id = prov[:game_id]
	p.game_running = 0
	p.save
end


####################
#PLAYERS
####################

	players = [
  {
    :user_id => 1,
    :provide_id => 1
  },
  {
    :user_id => 2,
    :provide_id => 1
  }]

Player.destroy_all

players.each do |play|
	p = Player.new
	p.user_id = play[:user_id]
	p.provide_id = play[:provide_id]
	p.save
end

