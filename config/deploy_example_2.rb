
task :deploy do
  transaction do
    update_code
    symlink
  end

  restart
end

task :backup_database, :roles => :db, :only => { :backup => true } do
  run "#{sudo} mysqldump ... > /tmp/backup.sql"
  run "#{sudo} bzip2 /tmp/backup.sql"
  run "scp /tmp/backup.sql.bz2 offsite.host:/u/backups"
  run "#{sudo} rm /tmp/backup.sql.bz2"
end

namespace :apache do
  [:stop, :start, :restart, :reload].each do |action|
    desc "#{action.to_s} server"
    task action, :roles => :web do
      run "apachectl -f /usr/apache2/conf/httpd.conf -k #{action.to_s}"
    end
  end
end
