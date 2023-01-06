class WelcomeController < ApplicationController
	http_basic_authenticate_with name: "shiwi", password: "shiwi", except: [ :show]
	def index
	end
end
