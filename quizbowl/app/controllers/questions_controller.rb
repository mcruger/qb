class QuestionsController < ApplicationController

	def index
		@questions = Question.all
		#puts @questions	
	end

	


end

=begin
<div class="row">
<div class="small-9 small-centered columns">
	<%= image_tag "QuizBowlLogo.png" %>
</div>
</div>

<!-- 
<% @questions.each do |q| %>
	<%= q.question %> <br>
	<%= q.answer1 %> <br>
	<%= q.answer2 %> <br>
	<%= q.answer3 %> <br>
	<%= q.answer4 %> <br>
	<br><br>
<% end %> -->

=end