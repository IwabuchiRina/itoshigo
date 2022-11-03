class TasksController < ApplicationController
  #一覧ページ
  def index
    @tasks = Task
    .where(user_id: current_user.id)
    .order('plan_date asc')
  end

  def show
    @task = Task.find(params[:id])
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
    p[:is_completed] = 0
    Task.create(p)
    flash[:success] = 'タスクを登録しました！'
    redirect_to tasks_path()
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    p = params.permit(
      :name,
      :plan_date,
      :memo
    )
    @task.assign_attributes(p)
    @task.save
    flash[:success] = 'タスク情報を変更しました！'
    redirect_to tasks_path()
  end

  def complete
    @task = Task.find(params[:id])
    @task.is_complete = 1
    @task.save
    flash[:success] = 'タスクを完了しました！'
    redirect_to tasks_path()
  end
end
   