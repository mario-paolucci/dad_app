class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  http_basic_authenticate_with name: "massimo", password: "c0mitat0Pa0lucc1"

  # GET /people
  # GET /people.json
  def index
    @people = Person.order(sort_column + " " + sort_direction).search(params[:search]).paginate(:per_page => 10, :page => params[:page])
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Persona creata correttamente.' }
        format.json { render action: 'show', status: :created, location: @person }
      else
        format.html { render action: 'new' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Persona modificata correttamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
    end
  end

  private

    def sort_column
      Person.column_names.include?(params[:sort]) ? params[:sort] : "nome"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:nome, :cognome, :mail, :tel1, :tel2, :tel3, :tel4, :indirizzo, :comune, :provincia, :regione, :incarico, :seggio, :riferimento, :priorita, :note)
    end
end
