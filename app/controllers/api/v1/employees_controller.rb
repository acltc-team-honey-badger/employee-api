class Api::V1::EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
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
    render json: "Employee Deleted"
  end





end
