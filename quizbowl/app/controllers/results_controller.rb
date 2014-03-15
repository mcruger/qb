class ResultsController < ApplicationController


	def track_results

    	result = Result.find_by_user_id_and_provide_id(params[:res_user_id], params[:res_provide_id])

    	if (result.blank?)
    		res = Result.new
			res.user_id = params["res_user_id"]
			res.provide_id = params["res_provide_id"]
			res.score = params["res_score"]
			res.save
    	else
    		result.score = params["res_score"]
    		result.save
    	end

    	user = User.find_by_user_id(params[:res_user_id])
    	if (user.high_score < params[:res_score])
    		user.high_score = params[:res_score]
    		user.save
    	end
    	


    	redirect_to show_lobbys_url

	end

end