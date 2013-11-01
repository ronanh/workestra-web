class StaticPagesController < ApplicationController
  def home
  	flash[:success] = "hello"
  end

  def help
  end

  def about
  end
end
