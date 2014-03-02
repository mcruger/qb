# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# headlines = [ { :title => "Part of the Affordable Care Act delayed again",
#                  :url => "http://www.usatoday.com/story/news/nation/2014/02/10/aca-no-longer-applies-to-50-employees-and-under-in-2015/5370055/"
#                 },
#                 { :title => "Video shows capture of alleged al-Qaeda leader",
#                   :url => "http://www.usatoday.com/story/news/world/2014/02/11/video-al-libi-capture/5385257/"
#                 },
#                 { :title => "Teens are stressed, and not handling it well",
#                   :url => "http://www.usatoday.com/story/news/nation/2014/02/11/stress-teens-psychological/5266739/"
#                 },
#                 { :title => "Dumb Starbucks doesn't amuse health dept.",
#                   :url => "http://www.usatoday.com/story/money/business/2014/02/10/dumb-starbucks-not-so-dumb/5374659/"
#                 }
#             ]

# Headline.destroy_all

# headlines.each do |headline_info|
#   h = Headline.new
#   h.title = headline_info[:title]
#   h.url = headline_info[:url]
#   h.save
# end

####################
#USERS
####################

=begin
users = [
		{
			:username => "carl", 
			:email => "carl@example.com", 
			:password => "password", 
			:password_confirmation => "password"
		},
		{
			:username => "rob", 
			:email => "rob@example.com", 
			:password => "password", 
			:password_confirmation => "password"
		}
		]

User.destroy_all
users.each do |user|
    u = User.new
    u.username = user[:username]
    u.email = user[:email]
    u.password_digest = user[:password]
    #u.password = user[:password_confirmation]
	u.save
 end

=end

#need to seed with User.create so has_secure_password methods are picked up
user1 = User.create(username: "carl", email: "carl@example.com", password: "password", password_confirmation: "password")
user2 = User.create(username: "rob", email: "rob@example.com", password: "password", password_confirmation: "password")

####################
#QUESTIONS
####################

questions = [
			 {:question => "In which sport would you use a chucker?"},
			 {:question => "What would a tailor do with his hot plonker?"},
			 {:question => "What is an alewife?"},
			 {:question => "How many feet in a fathom?"},
			 {:question => "What does a funambulist do?"}
			]

=begin
			 {:question => "What did announcer Jack Brickhouse yell when the Cubs hit a home run?"},
			 {:question => "How many rings on the Olympic flag?"},
			 {:question => "Who was the first man in space?"},
			 {:question => "What would a Scotsman do with a spurtle?"},
			 {:question => "If you had caries who would you consult?"},
=end


Question.destroy_all

questions.each do |ques|
    q = Question.new
    q.question = ques[:question]
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
			:answer => "Badminton",
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
			:is_correct => 0}                  
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
    :name => "FirstGame",
    :user_id => 1,
    :description => "Test game, come playy....................asdfasdf..........asdfasdf................asdfasdf..asdfasdf",
    :created_at => DateTime.strptime("3/1/2014 19:00", "%m/%d/%Y %H:%M"),
    :updated_at => DateTime.strptime("3/1/2014 19:00", "%m/%d/%Y %H:%M")
  },
  {
    :name => "Duplicate of FirstGame",
    :user_id => 1,
    :description => "blah blah blah blah blah blah blah...................asdfasdf..........asdfasdf................asdfasdf..asdfasdf",
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

  providers = [
  {
    :user_id => 1,
    :game_id => 1
  },
  {
    :user_id => 2,
    :game_id => 2
  }]

Provide.destroy_all

providers.each do |prov|
	p = Provide.new
	p.user_id = prov[:user_id]
	p.game_id = prov[:game_id]
	p.save
end
