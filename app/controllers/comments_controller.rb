class CommentsController < ApplicationController
 before_action :set_comment, only: [:create]


 # POST /jobs
  # POST /jobs.json
  def create
  @comment = Comment.new(comment_params)
  @comment.job = @job

  @comment.save
   
  redirect_to "/"
  end

def index
 @comments = Comment.all
end
  
private
  # Use callbacks to share common setup or constraints between actions.
  def set_comment
  @job = Job.find(params[:job_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
  params.require(:comment).permit(:body, :name, :job_id)
  end
   


end
