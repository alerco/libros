class PeliculasController < ApplicationController
  # GET /peliculas
  # GET /peliculas.xml
  def index
    @peliculas = Pelicula.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @peliculas }
    end
  end

  # GET /peliculas/1
  # GET /peliculas/1.xml
  def show
    @pelicula = Pelicula.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pelicula }
    end
  end

  # GET /peliculas/new
  # GET /peliculas/new.xml
  def new
    @pelicula = Pelicula.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pelicula }
    end
  end

  # GET /peliculas/1/edit
  def edit
    @pelicula = Pelicula.find(params[:id])
  end

  # POST /peliculas
  # POST /peliculas.xml
  def create
    @pelicula = Pelicula.new(params[:pelicula])

    respond_to do |format|
      if @pelicula.save
        format.html { redirect_to(@pelicula, :notice => 'Pelicula was successfully created.') }
        format.xml  { render :xml => @pelicula, :status => :created, :location => @pelicula }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pelicula.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /peliculas/1
  # PUT /peliculas/1.xml
  def update
    @pelicula = Pelicula.find(params[:id])

    respond_to do |format|
      if @pelicula.update_attributes(params[:pelicula])
        format.html { redirect_to(@pelicula, :notice => 'Pelicula was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pelicula.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /peliculas/1
  # DELETE /peliculas/1.xml
  def destroy
    @pelicula = Pelicula.find(params[:id])
    @pelicula.destroy

    respond_to do |format|
      format.html { redirect_to(peliculas_url) }
      format.xml  { head :ok }
    end
  end
end
