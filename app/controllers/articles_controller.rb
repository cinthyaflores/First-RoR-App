class ArticlesController < ApplicationController
  #TODOS LOS CONTROLADORES DEBEN TENER ALGUNO O TODOS ESTOS METODOS
  # INDEX -> get
  # CREATE -> post
  # DELETE -> delete
  # SHOW -> get
  # NEW -> get
  # EDIT -> get
  # UPDATE -> patch o put

  #GET y /article
  def index 
    @articles = Article.all #METODO ALL: TODOS LOS REGISTROS DE LA TABLA ARTICLE
    # LAS VARIABLES CON @ SE PUEDEN ACCEDER DESDE LA VISTA Y DESDE EL CONTROLADOR (VARIABLES DE CLASE)
  end

  #POST con /article
  def create #SE PONE EL OBJETO (:article)) Y DESPUES EL ATRIBUTO (:title o :body)
    @article= Article.new(title: params[:article][:title], body: params[:article][:body]) #CON ESTO SE CREA EL OBJETO, PARA GUARDARLOE SE USA SAVE
                        #LOS PARAMETROS QUE ENVIAMOS EN UN FORMULARIO O URL SE ACCEDEN CON UN PARAM
    if @article.save
      redirect_to "/articles" #SE PUEDE PONER @articles PARA QUE ME REDIRECCIONE AL METODO SHOW CON EL ARTICULO QUE ACABO DE CREAR
      # O PUEDO PONER UNA DIRECCION EN ESPECÍFICO CON ""
    else
      render :new #SI NO SE GUARDA, VOLVER A NEW
    end
  end

  def edit
  end

  def update
  end

  #GET article/:id (SE LLAMA CON LA DIRECCION article Y EL NUMERO DEL ID)
  def show 
    @article = Article.find(params[:id]) #PARAMS TIENE TODOS LOS PARAMETROS O ATRIBUTOS DEL ARTICULO
  end

  def delete
  end
  
  #CREA UN NUEVO ARTICULO, PERO NO LO GUARDA EN LA BD SOLO EN MEMORIA
  #PARA CONCRETAR EL GUARDADO SE USA EL METODO CREATE (POST)
  #GET y /articles/new
  def new
    @article = Article.new()
  end
end
