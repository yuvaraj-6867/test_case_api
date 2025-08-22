class TestCase < ApplicationRecord
  belongs_to :project
  validates :title, presence: true
  validates :section, presence: true
  validates :priority, presence: true
  validates :test_type, presence: true
end