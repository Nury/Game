class GameController < ApplicationController
  def index
  end

  def logic


  	def win (player_id, winner_name)
  		if (params[:steaks].to_i <=0 && params[:player].to_i==player_id)
			@winner=winner_name
			Post.last.update_attribute(:number, params[:count])
			Post.last.update_attribute(:winner, player_id)
  		end
  	end

   	win(1, "Mr Server")
 
	if (params[:steaks].to_i >0)

		@play=true

		if(params[:count].to_i==0)
			post= Post.new number: 1, winner: 1
			post.save
		end	


		if (params[:player].to_i==1)	  		
	  		@n=1+rand(3)
	  		@steaks=params[:steaks].to_i-@n 
	  		@turn=2	
	  		@count=params[:count].to_i+1	
	  		Post.last.comments.create num: @n, player: 1 
 			redirect_to ('?steaks=' + @steaks.to_s + "&player="+ 2.to_s+"&n="+@n.to_s+"&count="+@count.to_s)
  		else
  			Post.last.comments.create num: params[:n], player: 2
	  	end	

	else  
		@play=false		
	end

	win(2, "Mr Browser")

	@posts=Post.limit(10).offset(Post.last.id-10).reverse
	@comments=Comment.all
 
  end

  def welcome
  end

  def randomredirector
  	redirect_to('?steaks=' + (20+rand(20)).to_s + '&player=' +(2-rand(2)).to_s + '&n=' +(1+rand(2)).to_s + '&count=0') 
  	@play=true
  end

end
