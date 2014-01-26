require 'spec_helper'

describe TicketsController do

  it "displays an error for a missing project" do
    get :show, :project_id => "not-here-one", :id => "not-here"
    response.should redirect_to(projects_path)
    message = "The project you were looking for could not be found."
    flash[:alert].should eq(message)
  end

  it "displays an error for a missing ticket" do
    @project = FactoryGirl.create(:project)
    get :show, :project_id => @project.id, :id => "not-here"
    response.should redirect_to(project_path(@project))
    message = "The ticket you were looking for could not be found."
    flash[:alert].should eq(message)
  end

end
