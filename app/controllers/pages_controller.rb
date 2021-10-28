class PagesController < ApplicationController

skip_before_action :authenticate_user!, only: [ :home, :work, :series, :about ]

  def home
  end

end
