class OceansController < ApplicationController
  # GET /oceans
  # GET /oceans.xml
  def index
    @oceans = Ocean.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @oceans }
    end
  end

  # GET /oceans/1
  # GET /oceans/1.xml
  def show
    @ocean = Ocean.find(params[:id])

    respond_to do |format|
    	format.js
      format.html # show.html.erb
      format.xml  { render :xml => @ocean }
    end
  end

  # GET /oceans/new
  # GET /oceans/new.xml
  def new
    @ocean = Ocean.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ocean }
    end
  end

  # GET /oceans/1/edit
  def edit
    @ocean = Ocean.find(params[:id])
  end

  # POST /oceans
  # POST /oceans.xml
  def create
    @ocean = Ocean.new(params[:ocean])

    respond_to do |format|
      if @ocean.save
        format.html { redirect_to(@ocean, :notice => 'Ocean was successfully created.') }
        format.xml  { render :xml => @ocean, :status => :created, :location => @ocean }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ocean.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /oceans/1
  # PUT /oceans/1.xml
  def update
    @ocean = Ocean.find(params[:id])

    respond_to do |format|
      if @ocean.update_attributes(params[:ocean])
      	format.js
        format.html { redirect_to(@ocean, :notice => 'Ocean was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ocean.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /oceans/1
  # DELETE /oceans/1.xml
  def destroy
    @ocean = Ocean.find(params[:id])
    @ocean.destroy

    respond_to do |format|
      format.html { redirect_to(oceans_url) }
      format.xml  { head :ok }
    end
  end
end
