# kazi-repo
![kazi-repo](https://user-images.githubusercontent.com/57993375/75129454-64c3d080-570c-11ea-9079-13b53a972cda.jpg)
# Overview
- 家事レポは行った家事を投稿できるアプリです
  kazi-repo is an app that can post housework
## Description
- 投稿するときはチェックボックスを使います
  select a checkbox when you post
- 登録したユーザーは他のユーザーの投稿を見ることができます
  The user registered is available to check posts other users posted
- 投稿に対して「いいね」機能を用いてリアクションすることが可能です
  You can use like-function for the posts
## Demo
- チェックボックスを使い投稿します
  Post usign a checkbox
- 画像の投稿が可能です
  available to post with photes
![result](https://user-images.githubusercontent.com/57993375/75132801-b3c53200-571b-11ea-9a10-2a4f1955c559.gif)
- 投稿に「いいね」を用いてリアクションすることが可能です
  available to use like-function for the posts
![result](https://user-images.githubusercontent.com/57993375/75133142-f3d8e480-571c-11ea-8077-259f91a34405.gif)
# Database
## users table
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, default: ""|
|encrypted_password|string|null: false, default: ""|
|reset_password_token|string|null: false|
|reset_password_sent_at|datetime|null: false|
|remember_created_at|datetime|null: false|
|nickname|string|null: false|
### Association
- has_many :reports
- has_many :likes
- has_one :user_address
- has_many :liked_reports, through: :likes, source: :report
## reports table
|Column|Type|Options|
|------|----|-------|
|checkbox|string||
|image|text||
|user_id|integer||
|likes_count||integer||
### Association
- belongs_to :user
- has_many :likes
- has_many :liked_users, through: :likes, source: :user
## likes table
|Column|Type|Options|
|------|----|-------|
|report_id|references|foreign_key: true|
|user_id|references|foreign_key: true|
### Association
  belongs_to :report
  belongs_to :user