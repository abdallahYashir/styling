class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery with: :exception
  include ApplicationHelper
end
