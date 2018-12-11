class ApikeysController < ApplicationController

	def create
		data = request.env["omniauth.auth"]
		Apikey.create(host: data["provider"].to_sym, user_id: current_user.id, uid: data["uid"], key: data["credentials"]["token"])
		redirect_to dashboard_path
	end

end