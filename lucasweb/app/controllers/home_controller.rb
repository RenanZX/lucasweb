class HomeController < ApplicationController
  before_action :setPages unless Admin.first.nil?

  def main
  end

  def homepage
  end

  def about
  end

  def contato
  end

private

  def setPages
  	@pages = Admin.first;
  end

end
