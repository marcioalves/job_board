class CommentsController < ApplicationController
  
  
  def create
    @job = Job.find(params[:job_id])
    @job.comments.find
    @job.comments.build
    redirect_to([@job,@comment])
  end 
  
  
end