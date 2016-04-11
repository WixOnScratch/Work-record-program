class WorkRecordsController < ApplicationController
  def index
    @work_records = WorkRecord.all
  end

  def show
    @work_record = WorkRecord.find params[:id]
    @lines = @work_record.work_record_lines
  end

  def new
    @work_record = WorkRecord.new
  end

  def create
    work_record_params = params.require(:work_record).permit(:date)
    @work_record = WorkRecord.new(work_record_params)
    if @work_record.save
      redirect_to @work_record
    else
      render "new"
    end
  end
end
