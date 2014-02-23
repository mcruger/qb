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
			 {:question => "What would a tailor do with his hot plonker?"}
			]

Question.destroy_all

questions.each do |ques|
    q = Question.new
    q.question = ques[:question]
	q.save
 end

=begin
	
rescue Exception => e
	
end
answers = [{:question_id => 1,
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
			{:question_id => 2,
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
			:is_correct => 0}]


Answer.destroy_all

answers.each do |ans|
    a = Answer.new
    a.question_id = a[:question_id]
    a.answer = a[:answer]
    a.is_correct = a[:is_correct]
	a.save
 end
=end