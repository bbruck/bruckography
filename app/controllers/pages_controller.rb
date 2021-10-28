class PagesController < ApplicationController

skip_before_action :authenticate_user!, only: [ :home, :work, :series, :about, :contact ]

  def home
  end

end
