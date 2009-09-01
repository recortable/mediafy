namespace :mediafy do
  desc "Sync extra files from mediafy plugin."
  task :sync do
    system "rsync -ruv vendor/plugins/mediafy/db/migrate db"
    system "rsync -ruv vendor/plugins/mediafy/public ."
    system "rsync -ruv vendor/plugins/mediafy/config/locales/ config/locales"
  end
end
