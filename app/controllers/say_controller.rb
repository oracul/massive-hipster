class SayController < ApplicationController

	 prepend_before_filter :require_no_authentication, :only => [ :new, :create ]
  prepend_before_filter :allow_params_authentication!, :only => :create
  prepend_before_filter :only => [ :create, :destroy ] { request.env["devise.skip_timeout"] = true }

	before_filter :authenticate_user!


	def hello
		@time = Time.now
	end

	def goodbye
	end

 
 

end
