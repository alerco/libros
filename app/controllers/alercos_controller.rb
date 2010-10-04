class AlercosController < ApplicationController
  # GET /alercos
  # GET /alercos.xml
  def index
    @alercos = Alerco.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alercos }
    end
  end

  # GET /alercos/1
  # GET /alercos/1.xml
  def show
    @alerco = Alerco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alerco }
    end
  end

  # GET /alercos/new
  # GET /alercos/new.xml
  def new
    @alerco = Alerco.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alerco }
    end
  end

  # GET /alercos/1/edit
  def edit
    @alerco = Alerco.find(params[:id])
  end

  # POST /alercos
  # POST /alercos.xml
  def create
    @alerco = Alerco.new(params[:alerco])

    respond_to do |format|
      if @alerco.save
        format.html { redirect_to(@alerco, :notice => 'Alerco was successfully created.') }
        format.xml  { render :xml => @alerco, :status => :created, :location => @alerco }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alerco.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alercos/1
  # PUT /alercos/1.xml
  def update
    @alerco = Alerco.find(params[:id])

    respond_to do |format|
      if @alerco.update_attributes(params[:alerco])
        format.html { redirect_to(@alerco, :notice => 'Alerco was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alerco.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alercos/1
  # DELETE /alercos/1.xml
  def destroy
    @alerco = Alerco.find(params[:id])
    @alerco.destroy

    respond_to do |format|
      format.html { redirect_to(alercos_url) }
      format.xml  { head :ok }
    end
  end
end
