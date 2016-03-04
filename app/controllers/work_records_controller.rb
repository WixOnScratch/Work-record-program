class WorkRecordsController < ApplicationController
  def index
    @work_records = WorkRecord.all
  end

  def show
    @work_record = WorkRecord.find params[:id]
    @lines = @work_record.work_record_lines
  end
end
