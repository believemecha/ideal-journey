class Student < ApplicationRecord
    def create
        @student = Student.new(student_params)
        if @student.save
          redirect_to @student
        else
          render 'new'
        end
    end
    
    private
    
    def student_params
        params.require(:student).permit(:name, :grade)
    end
end
