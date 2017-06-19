class HomeController < ApplicationController
  def top
    if user_signed_in?
      @note = Note.new
      @notes = Note.all
    else
      @message = "ようこそGatebookへ！"
    end
  end

  def about
  end
end
