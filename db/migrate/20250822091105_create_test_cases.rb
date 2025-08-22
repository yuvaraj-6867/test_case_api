class CreateTestCases < ActiveRecord::Migration[8.0]
  def change
    create_table :test_cases do |t|
      t.string :title
      t.string :section
      t.string :priority
      t.string :test_type
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
