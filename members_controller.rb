class MembersController < ApplicationController
    def new
      @member = Member.new
    end
  
    def create
      @member = Member.new(member_params)
      if @member.save
        redirect_to members_path, notice: 'Member successfully created.' 
      else
        render :new
      end # if the member is saved
    end # creates the member
  
    def index
      @members = Member.all
    end # shows all index
  
    def edit
      @member = Member.find(params[:id])
    end # finds member to edit
  
    def update
      @member = Member.find(params[:id])
      if @member.update(member_params)
        redirect_to members_path, notice: 'Member successfully updated.'
      else
        render :edit
      end # chooses if the updates ar valid
    end # method to update the members
  
    def destroy
      @member = Member.find(params[:id])
      @member.destroy
      redirect_to members_path, notice: 'Member successfully deleted.'
    end # method of deletion
  
    private
  
    def member_params
      params.require(:member).permit(:name, :age, :gender, :homeaddress, :phonenumber, :email)
    end
  end
  