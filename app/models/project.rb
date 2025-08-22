class Project < ApplicationRecord
  has_many :test_cases, dependent: :destroy
  validates :name, presence: true
end