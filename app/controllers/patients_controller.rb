class PatientsController < ActionController::Base

    def index
        @patient = Patient.all  
    end


    def show
        @patient = Patient.find(params[:id])
    end

    def new
        @patient = Patient.new
    end

    def create
        Patient.create(params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on))
    
        redirect_to authors_path
    end

    def edit
        @patient = Patient.find(params[:id])
    end

    def update
        @patient = Patient.find(params[:id])
        @patient.update(params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on))
    
        redirect_to @patient
    end

    def destroy
        @patient = Patient.find(params[:id])
        @patient.destroy
        redirect_to patients_path
    end

end