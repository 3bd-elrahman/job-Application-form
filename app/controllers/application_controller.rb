class ApplicationController < ActionController::Base

	def cities
		@cities=['Cairo','Giza','Alexandria','Mansora','Suez','Ismalia']
	end

	helper_method :cities
end
