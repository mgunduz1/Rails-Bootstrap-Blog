class CommentsController < ApplicationController
    def create
        @blog = Blog.find(params[:blog_id])
        @comments = @blog.comments.create(comment_params)


        if @comments.save
            redirect_to @blog
        end
    end

    def destroy
        @blog = Blog.find(params[:blog_id])
        @comment = Comment.find(params[:id])
        @comment.destroy

        redirect_to @blog
    end


    private
    def comment_params
    params.require(:comment).permit(:comment)
    end

end