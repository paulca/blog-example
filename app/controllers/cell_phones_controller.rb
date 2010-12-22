class CellPhonesController < ApplicationController
  # GET /cell_phones
  # GET /cell_phones.xml
  def index
    @cell_phones = CellPhone.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cell_phones }
    end
  end

  # GET /cell_phones/1
  # GET /cell_phones/1.xml
  def show
    @cell_phone = CellPhone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cell_phone }
    end
  end

  # GET /cell_phones/new
  # GET /cell_phones/new.xml
  def new
    @cell_phone = CellPhone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cell_phone }
    end
  end

  # GET /cell_phones/1/edit
  def edit
    @cell_phone = CellPhone.find(params[:id])
  end

  # POST /cell_phones
  # POST /cell_phones.xml
  def create
    @cell_phone = CellPhone.new(params[:cell_phone])

    respond_to do |format|
      if @cell_phone.save
        format.html { redirect_to(@cell_phone, :notice => 'Cell phone was successfully created.') }
        format.xml  { render :xml => @cell_phone, :status => :created, :location => @cell_phone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cell_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cell_phones/1
  # PUT /cell_phones/1.xml
  def update
    @cell_phone = CellPhone.find(params[:id])

    respond_to do |format|
      if @cell_phone.update_attributes(params[:cell_phone])
        format.html { redirect_to(@cell_phone, :notice => 'Cell phone was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cell_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cell_phones/1
  # DELETE /cell_phones/1.xml
  def destroy
    @cell_phone = CellPhone.find(params[:id])
    @cell_phone.destroy

    respond_to do |format|
      format.html { redirect_to(cell_phones_url) }
      format.xml  { head :ok }
    end
  end
end
