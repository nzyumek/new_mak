class MakController < ApplicationController
  
  def home
    @newsfeeds = Newsfeed.all
  end


end
