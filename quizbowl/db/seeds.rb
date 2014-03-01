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
