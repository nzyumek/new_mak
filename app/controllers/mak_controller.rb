class MakController < ApplicationController
  
  def home
    @inquiry = Inquiry.new
    @newsfeeds = Newsfeed.order(date: "DESC").last(5)
  end


end
