class TopicsController < ApplicationController

  before_action :get_index, only: [:show, :update, :destroy, :edit]

  def index
    @topics = Topic.all.order('created_at DESC')
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to @topic
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @topic.save
      redirect_to @topic
    else
      render 'edit'
    end
  end

  def destroy
    @topic.destroy
  end


  private 

    def get_index
      @topic = Topic.find(params[:id])
    end

    def topic_params
      params.require(:topic).permit(:subject, :body)
    end
end
