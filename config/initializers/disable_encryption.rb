Rails.application.configure do
  # Disable ActiveRecord encryption completely
  config.active_record.encryption.encrypt_fixtures = false
  config.active_record.encryption.store_key_references = false
  config.active_record.encryption.extend_queries = false
end