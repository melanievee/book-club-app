class Api::ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end

  def show
    @club = Club.includes(:users).find(params[:id])
  end
end
