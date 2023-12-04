class ApplicationController < ActionController::Base
  before_action :print_message

  private

  def print_message
    puts ' I am an inherited before action controller'
  end
end
