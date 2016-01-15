class StaticPagesController < ApplicationController
  def home
    puts "Home!"
  end

  def help
  end

  def about
    puts "Controlling the about page"
  end
end
