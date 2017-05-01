require 'bundler'
Bundler.require

$LOAD_PATH.unshift(File.expand_path("app", __dir__))
#guides directory. File class ^method^

require 'controllers/task_manager_app'

run TaskManagerApp
