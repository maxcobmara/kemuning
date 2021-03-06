class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy delete_attachment publish ]

  # GET /tasks or /tasks.json
  def index
    @tasks = Task.includes([:png_bpmn_attachment]).order(code: :asc)
    if params[:search]
      @tasks = @tasks.where("code LIKE :cc OR title LIKE :pt ", cc: "#{params[:search]}%", pt: "%#{params[:search]}%")
    end
  end

  # GET /tasks/1 or /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
    @task.events.build
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks or /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def publish
    respond_to do |format|
       format.pdf do
         pdf = Publish.new(@task, view_context)
         send_data pdf.render, filename: "RBPA_#{(@task.code).gsub('.','-')}_#{(@task.title.tr(" ", "_"))}-#{@task.updated_at.strftime("%Y%m%d")}",
                               type: "application/pdf",
                               disposition: "inline"
       end
     end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def delete_attachment
    eval("@task.#{params[:attachment]}.purge")
    redirect_to edit_task_path(@task)
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:code, :title, :position_id, :owner, :notes, :description, :bpmn, :png_bpmn, :dmn, :findings, :risks, :recommendations)
    end
end
