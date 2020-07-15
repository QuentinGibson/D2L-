class TasksController < ApplicationController
  before_action :get_subject
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :set_time_zone, if: :user_signed_in?

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = @subject.tasks
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = @subject.tasks.build
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = @subject.tasks.build(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to root_path notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to root_path, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def calendar
    @tasks =Task.all
  end

  private
  def get_subject
    if(params[:subject_id] == nil)
      @subject = current_user.subjects.all
    else
      @subject = current_user.subjects.find(params[:subject_id])
    end
  end
  def set_time_zone
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = @subject.tasks.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:name, :subject_id, :description, :due_date, :start_time)
  end
end
