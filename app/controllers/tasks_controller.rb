class TasksController < ApplicationController
  #一覧ページ
  def index
    @tasks = Task.where(user_id: current_user.id)
  end

  #登録フォームのページ
  def new
    @task = Task.new()
  end

  #登録処理
  def create
    p = params.permit(
      :name,
      :plan_date,
      :memo
    )
    p[:user_id] = current_user.id
    p[:is_completed] = false
    Task.create(p)
    flash[:success] = 'タスクを登録しました！'
    redirect_to tasks_path()
  end
end
   