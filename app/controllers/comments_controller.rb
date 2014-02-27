class CommentsController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    @comment = @job.comments.build(params[:comment])
    @comment.save
    redirect_to @job
  end
end