namespace :assets do
  desc "Upload assets to S3 bucket"
  task :sync => :environment do
    Rake::Task["assets:precompile"].invoke
    AssetSync.sync
  end
end
