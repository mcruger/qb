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

questions = [{ :question => "In which sport would you use a chucker?",
				:answer1 => "Badminton",
				:answer2 => "Horseback Riding",
				:answer3 =>	"Cricket",
				:answer4 =>	"Lawn Bowling"},
			{ :question => "What would a tailor do with his hot plonker?",
				:answer1 => "Suring up a seam",
				:answer2 => "Putting a fresh crease in pants",
				:answer3 => "Ironing some cloth",
				:answer4 => "Stretching shrunken clothes"}]

Question.destroy_all

questions.each do |ques|
    q = Question.new
    q.question = ques[:question]
    q.answer1 = ques[:answer1]
    q.answer2 = ques[:answer2]
    q.answer3 = ques[:answer3]
    q.answer4 = ques[:answer4]
	q.save
 end