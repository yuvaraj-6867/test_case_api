# Disable ActiveRecord encryption completely
Rails.application.configure do
  config.active_record.encryption.primary_key = nil
  config.active_record.encryption.deterministic_key = nil
  config.active_record.encryption.key_derivation_salt = nil
end