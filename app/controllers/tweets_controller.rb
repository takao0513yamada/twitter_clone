class TweetsController < ApplicationController
  # deviseのメソッドで「ログインしていないユーザーをログイン画面に送る」メソッド
  before_action :authenticate_user!, except: [:index]

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end
  
  def create
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

end
