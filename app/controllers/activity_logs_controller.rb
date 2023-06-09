class ActivityLogsController < ApplicationController
  before_action :set_activity_log, only: %i[ show edit update destroy ]

  # GET /activity_logs or /activity_logs.json
  def index
    @activity_logs = ActivityLog.all
  end

  # GET /activity_logs/1 or /activity_logs/1.json
  def show
  end

  # GET /activity_logs/new
  def new
    @activity_log = ActivityLog.new
  end

  # GET /activity_logs/1/edit
  def edit
  end

  # POST /activity_logs or /activity_logs.json
  def create
    @activity_log = ActivityLog.new(activity_log_params)

    respond_to do |format|
      if @activity_log.save
        format.html { redirect_to activity_log_url(@activity_log), notice: "Activity log was successfully created." }
        format.json { render :show, status: :created, location: @activity_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_logs/1 or /activity_logs/1.json
  def update
    respond_to do |format|
      if @activity_log.update(activity_log_params)
        format.html { redirect_to activity_log_url(@activity_log), notice: "Activity log was successfully updated." }
        format.json { render :show, status: :ok, location: @activity_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_logs/1 or /activity_logs/1.json
  def destroy
    @activity_log.destroy

    respond_to do |format|
      format.html { redirect_to activity_logs_url, notice: "Activity log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_log
      @activity_log = ActivityLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_log_params
      params.require(:activity_log).permit(:user_id, :action, :record_id, :record_type, :d_at)
    end
end
