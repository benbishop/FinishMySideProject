class UnfinishedProjectsController < ApplicationController
  # GET /unfinished_projects
  # GET /unfinished_projects.json
  def index
    @unfinished_projects = UnfinishedProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unfinished_projects }
    end
  end

  # GET /unfinished_projects/1
  # GET /unfinished_projects/1.json
  def show
    @unfinished_project = UnfinishedProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unfinished_project }
    end
  end

  # GET /unfinished_projects/new
  # GET /unfinished_projects/new.json
  def new
    @unfinished_project = UnfinishedProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unfinished_project }
    end
  end

  # GET /unfinished_projects/1/edit
  def edit
    @unfinished_project = UnfinishedProject.find(params[:id])
  end

  # POST /unfinished_projects
  # POST /unfinished_projects.json
  def create
    @unfinished_project = UnfinishedProject.new(params[:unfinished_project])

    respond_to do |format|
      if @unfinished_project.save
        format.html { redirect_to @unfinished_project, notice: 'Unfinished project was successfully created.' }
        format.json { render json: @unfinished_project, status: :created, location: @unfinished_project }
      else
        format.html { render action: "new" }
        format.json { render json: @unfinished_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unfinished_projects/1
  # PUT /unfinished_projects/1.json
  def update
    @unfinished_project = UnfinishedProject.find(params[:id])

    respond_to do |format|
      if @unfinished_project.update_attributes(params[:unfinished_project])
        format.html { redirect_to @unfinished_project, notice: 'Unfinished project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unfinished_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unfinished_projects/1
  # DELETE /unfinished_projects/1.json
  def destroy
    @unfinished_project = UnfinishedProject.find(params[:id])
    @unfinished_project.destroy

    respond_to do |format|
      format.html { redirect_to unfinished_projects_url }
      format.json { head :no_content }
    end
  end
end
