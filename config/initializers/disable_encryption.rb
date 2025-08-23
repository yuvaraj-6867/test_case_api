# Completely disable ActiveRecord encryption to avoid credentials issues
module ActiveRecord
  module Encryption
    def self.config
      @config ||= OpenStruct.new(
        encrypt_fixtures: false,
        store_key_references: false,
        extend_queries: false,
        primary_key: nil,
        deterministic_key: nil,
        key_derivation_salt: nil
      )
    end
  end
end