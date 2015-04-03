source 'https://rubygems.org'

ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# gem 'mysql2'
gem 'bootstrap-sass'
# RailsConfig helps you easily manage environment specific Rails settings in an easy and usable manner
gem 'rails_config'

gem 'activerecord-session_store'

#pagenation
gem "kaminari"
# Use ActiveModel has_secure_password
gem 'bcrypt'

#Sqliteからmysqlに移行
gem 'yaml_db'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  gem 'sqlite3'
  gem 'rails-erd', github: 'paulwittmann/rails-erd', branch: 'mavericks'              # モデルのER図をPDFで出力してくれる
  gem 'puma'                   # 開発用サーバ
  gem 'bullet'                 # 余計なSQLを検出できる
  gem 'rails_best_practices'   # Railsのベストプラクティスを教えてくれる
  gem 'guard-rspec'            # ファイルが変更されたらRsepcを自動実行
  gem 'quiet_assets'           # アセットログの抑制
  gem 'spring'                 # RspecなどでRailsをプリロードする
  gem 'guard-livereload'       # ファイルが変更されたらページを自動リロード
  gem 'annotate', git: 'git://github.com/ctran/annotate_models.git' # テーブル情報をモデルファイルに追記してくれる

 # debug
  gem 'better_errors'          # エラー画面を見やすくする
  gem 'binding_of_caller'      # better_errorsのエラー画面でREPLが使える
  gem 'tapp'                   # プリントデバッグがしやすくなる
  gem 'pry-rails'              # railsでpryが使える
  gem 'pry-byebug'             # pryでデバックコマンドが使える
  gem 'awesome_print'          # プリントデバッグの出力を整形
  gem 'hirb'                   # SQLの結果を見やすく整形してくれる
  gem 'hirb-unicode'           # hirbの日本語対応
end

group :test do
  gem 'rspec-rails', '~> 3.1.0'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'database_cleaner'       # テスト実行後にDBをクリア
  gem 'capybara'               # ブラウザでの操作をシミュレートしてテストができる
end

group :production do
  gem 'mysql2'
end
