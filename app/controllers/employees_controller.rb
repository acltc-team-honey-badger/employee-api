class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    render json: @employee
  end

  def create
    @employee = Employee.create(first_name: params[:first_name], last_name: params[:last_name], birthdate: params[:birthdate], email: params[:email], ssn: params[:ssn])
    render :show
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(first_name: params[:first_name], last_name: params[:last_name], birthdate: params[:birthdate], email: params[:email], ssn: params[:ssn])
    render :show
  end

  def destroy
    Employee.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to "/employees"}
      format.json {render json: "Employee Deleted" }
    end
  end
end
