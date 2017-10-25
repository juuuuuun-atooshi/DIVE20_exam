class TopicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_topic, only:[:edit, :update, :destroy]

  def index
    @topics = Topic.all
  end

  def show
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create(topic_params)
    @topic.user_id = current_user.id

    if @topic.save
      redirect_to topics_path, notice: "投稿しました！"
      NoticeMailer.sendmail_topic(@topic).deliver
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      redirect_to topics_path, notice: "投稿を更新しました！"
    else
      render 'new'
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_path, notice: "投稿を削除しました！"
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :content, :image)
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end

end
