namespace :copy do

  desc "Copie la liste des sites à surveiller."
  task :monitored_hosts do
    on roles(:app) do
      execute "mkdir -p #{shared_path}/node_app"
      upload! StringIO.new(File.read("node_app/monitored_hosts.js")), "#{shared_path}/node_app/monitored_hosts.js"
    end
  end

end
