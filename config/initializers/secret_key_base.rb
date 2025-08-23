Rails.application.configure do
  config.secret_key_base = ENV['SECRET_KEY_BASE'] || 'c70763dafb58ac983763db40264d9d0f'
end