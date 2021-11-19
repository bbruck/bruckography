class WorkController < ApplicationController

  def index
    @work = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    @work.save
    if @work.save!
      redirect_to work_path
    else
      render :new
    end
  end

  private

  def work_params
    params.require(:work).permit(:name, :photos [])
  end

end
