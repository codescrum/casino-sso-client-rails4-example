# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :redis_store, redis_server: "redis://127.0.0.1:6379/0/_sso_rails4_example_app_session"
