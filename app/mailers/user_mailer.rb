class UserMailer < ApplicationMailer	
	# Code for init email
  def welcome(user)
    @email = user.email
    @role = user.role
    @name = user.name
    
    # Make a method for parse emails
    mail to: @email
  end

  def username(user)
  	@name = user.name
  end

 	def role(user)
 		if user.role == "admin"
			return "and welcome Houston, you're on cabin!"
 		elsif user.role == "member"
 			return "and well, you shall not pass by this gate"
 		elsif user.role == "vip"
 			return %w[].sample
 		elsif user.role == "dealer"
 			return %w[].sample
 		elsif user.role == "carrier"
 			return %w[].sample
 		else
 			"and why are you here?"
 		end
 	end

 	def prospect(text)
 		meting_url = ""
 		@call = "Would You Like To Hear About Le Wagon's Other Free Workshops And Talks?"
 		@no = 	"No, thank you."
 		case text
 		  when @call
 			  "E se preferir, poderá conversar com Ana sobre o bootcamp através do link"
 		  when @no
 		    false
 		end


 	end
end
