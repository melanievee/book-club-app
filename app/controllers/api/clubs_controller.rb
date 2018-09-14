class Api::ClubsController < ApplicationController
  def show
    @club = Club.includes(:users).find(params[:id])
  end
end
