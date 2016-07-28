class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
  	render html: "Xin chào các bạn, mình là Tuấn"
  end

  def map
  end
end
