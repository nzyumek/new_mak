class MakController < ApplicationController
  
  def home
    can? :read, :mak
    @inquiry = Inquiry.new
    @newsfeeds = Newsfeed.order(date: "DESC").last(5)
  end


end
