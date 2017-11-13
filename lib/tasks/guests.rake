<<<<<<< HEAD
namespace :guests do
    desc "Remove guest accounts more than a week old."
    task :cleanup => :environment do
      User.where(guest: true).where("created_at < ?", 1.week.ago).destroy_all
    end
=======
namespace :guests do
    desc "Remove guest accounts more than a week old."
    task :cleanup => :environment do
      User.where(guest: true).where("created_at < ?", 1.week.ago).destroy_all
    end
>>>>>>> 4933270bbf7bc821417be985da244c8d8dadcc30
  end