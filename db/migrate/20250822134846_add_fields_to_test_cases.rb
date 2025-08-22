class AddFieldsToTestCases < ActiveRecord::Migration[8.0]
  def change
    add_column :test_cases, :template_type, :string
    add_column :test_cases, :estimate, :string
    add_column :test_cases, :reference, :string
    add_column :test_cases, :automation_type, :string
    add_column :test_cases, :preconditions, :text
    add_column :test_cases, :steps, :text
  end
end
