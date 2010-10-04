class LibrosController < ApplicationController
  # GET /libros
  # GET /libros.xml
  def index
    @libros = Libro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @libros }
    end
  end

  # GET /libros/1
  # GET /libros/1.xml
  def show
    @libro = Libro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @libro }
    end
  end

  # GET /libros/new
  # GET /libros/new.xml
  def new
    @libro = Libro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @libro }
    end
  end

  # GET /libros/1/edit
  def edit
    @libro = Libro.find(params[:id])
  end

  # POST /libros
  # POST /libros.xml
  def create
    @libro = Libro.new(params[:libro])

    respond_to do |format|
      if @libro.save
        format.html { redirect_to(@libro, :notice => 'Libro was successfully created.') }
        format.xml  { render :xml => @libro, :status => :created, :location => @libro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @libro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /libros/1
  # PUT /libros/1.xml
  def update
    @libro = Libro.find(params[:id])

    respond_to do |format|
      if @libro.update_attributes(params[:libro])
        format.html { redirect_to(@libro, :notice => 'Libro was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @libro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /libros/1
  # DELETE /libros/1.xml
  def destroy
    @libro = Libro.find(params[:id])
    @libro.destroy

    respond_to do |format|
      format.html { redirect_to(libros_url) }
      format.xml  { head :ok }
    end
  end
end
