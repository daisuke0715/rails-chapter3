Rails.application.routes.draw do
  get '/top' => 'homes#top'
  get 'todolists/new' => 'todolists#new'
  post '/todolists' => 'todolists#create' 
  # フォームから送信された情報をデータベースへ保存するアクションへ
  # /todolists => フォームのボタンクリック時
  # createアクション => データベースへ保存する処理を記述
end
