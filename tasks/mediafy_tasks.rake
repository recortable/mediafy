namespace :medify do
  desc "Sync extra files from mediafy plugin."
  task :sync do
    system "rsync -ruv vendor/plugins/mediafy/db/migrate db"
    system "rsync -ruv vendor/plugins/mediafy/public ."
  end
end
