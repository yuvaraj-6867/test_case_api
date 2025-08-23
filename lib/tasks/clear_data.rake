namespace :db do
  desc "Clear all projects and test cases"
  task clear_data: :environment do
    Project.destroy_all
    TestCase.destroy_all
    puts "All projects and test cases cleared"
  end
end
