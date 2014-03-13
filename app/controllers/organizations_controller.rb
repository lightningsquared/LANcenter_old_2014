class OrganizationsController < ApplicationController
  # GET /organization
  def show
    @organization = Organization.find(1)

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /organizations/new
  def new
    @organization = Organization.find(1) || Organization.new

    respond_to do |format|
      if @organization.new_record?
        format.html # new.html.erb
      else
        format.html { redirect_to organization_path, notice: 'An organization already exists.' }
      end
    end
  end

  # GET /organizations/1/edit
  def edit
    @organization = Organization.find(1)
  end

  # POST /organizations
  def create
    @organization = Organization.new(params[:organization])

    respond_to do |format|
      if @organization.save
        format.html { redirect_to organization_path, notice: 'Organization was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /organizations/1
  def update
    @organization = Organization.find(1)

    respond_to do |format|
      if @organization.update_attributes(params[:organization])
        format.html { redirect_to organization_path, notice: 'Organization was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /organizations/1
  def destroy
    @organization = Organization.find(1)
    @organization.destroy

    respond_to do |format|
      # format.html { redirect_to organization_path }
    end
  end
end
