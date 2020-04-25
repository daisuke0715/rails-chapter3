Rails.application.routes.draw do
  # Topページ表示機能を実装
  get '/top' => 'homes#top'
  # 新規記事投稿機能を実装
  get 'todolists/new' => 'todolists#new'
  post '/todolists' => 'todolists#create'
  # 記事一覧表示機能を実装
  get '/todolists' => 'todolists#index'
  # 記事詳細表示機能を実装
  get '/todolists/:id' => 'todolists#show', as: 'todolist'
  # 記事編集機能を実装
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  # 記事編集後の更新を実装
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  # 記事削除機能を実装
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
end
