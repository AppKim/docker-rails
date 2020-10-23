# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def write; end

  def create
    post = Post.new
    post.name = params[:name]
    post.content = params[:content]
    post.save
    redirect_to '/posts/index'
  end

  def modify
    @post = Post.find(params[:post_id])
  end

  def update
    post = Post.find(params[:post_id])
    post.name = params[:name]
    post.content = params[:content]
    post.save
    redirect_to '/posts/index'
  end

  def delete
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to '/posts/index'
  end
end
