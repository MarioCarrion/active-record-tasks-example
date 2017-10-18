# frozen_string_literal: true

require 'ar_tasks_animals'
require 'ar_tasks_animals/rake_tasks'

namespace :ar_animals_tasks do
  Animals::RakeTasks::DatabaseTasks.tap do |db|
    db.database_configuration = YAML.load_file(Animals::RakeTasks::DEFAULT_DATABASE_YML)
    db.db_dir                 = Animals::RakeTasks::DEFAULT_DB_DIR
    db.env                    = ENV['RAILS_ENV'] || 'development'
    db.migrations_paths       = Animals::RakeTasks::DEFAULT_DB_MIGRATIONS_DIR
    db.seed_loader            = Animals::RakeTasks::SeedLoader.new
    db.root                   = File.expand_path('..', File.dirname(__FILE__))
  end

  task :environment do
    ActiveRecord::Base.tap do |base|
      base.configurations = Animals::RakeTasks::DatabaseTasks.database_configuration
      base.establish_connection(Animals::RakeTasks::DatabaseTasks.env.to_sym)
    end
  end

  load 'active_record/railties/databases.rake'
end
