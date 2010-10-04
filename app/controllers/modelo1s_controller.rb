class Modelo1sController < ApplicationController
  # GET /modelo1s
  # GET /modelo1s.xml
  def index
    @modelo1s = Modelo1.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @modelo1s }
    end
  end

  # GET /modelo1s/1
  # GET /modelo1s/1.xml
  def show
    @modelo1 = Modelo1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @modelo1 }
    end
  end

  # GET /modelo1s/new
  # GET /modelo1s/new.xml
  def new
    @modelo1 = Modelo1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @modelo1 }
    end
  end

  # GET /modelo1s/1/edit
  def edit
    @modelo1 = Modelo1.find(params[:id])
  end

  # POST /modelo1s
  # POST /modelo1s.xml
  def create
    @modelo1 = Modelo1.new(params[:modelo1])

    respond_to do |format|
      if @modelo1.save
        format.html { redirect_to(@modelo1, :notice => 'Modelo1 was successfully created.') }
        format.xml  { render :xml => @modelo1, :status => :created, :location => @modelo1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @modelo1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /modelo1s/1
  # PUT /modelo1s/1.xml
  def update
    @modelo1 = Modelo1.find(params[:id])

    respond_to do |format|
      if @modelo1.update_attributes(params[:modelo1])
        format.html { redirect_to(@modelo1, :notice => 'Modelo1 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @modelo1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /modelo1s/1
  # DELETE /modelo1s/1.xml
  def destroy
    @modelo1 = Modelo1.find(params[:id])
    @modelo1.destroy

    respond_to do |format|
      format.html { redirect_to(modelo1s_url) }
      format.xml  { head :ok }
    end
  end
end
