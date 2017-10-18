# frozen_string_literal: true

require 'active_record/tasks/database_tasks'

module Animals
  class RakeTasks
    include ActiveRecord::Tasks

    DEFAULT_BASE_PATH         = File.expand_path('../..', File.dirname(__FILE__))
    DEFAULT_DATABASE_YML      = File.join(DEFAULT_BASE_PATH, 'config', 'database.yml')
    DEFAULT_DB_DIR            = File.join(DEFAULT_BASE_PATH, 'db')
    DEFAULT_DB_MIGRATIONS_DIR = File.join(DEFAULT_DB_DIR, 'migrations')

    class SeedLoader
      DEFAULT_SEED_FILE = File.join(RakeTasks::DEFAULT_DB_DIR, 'seeds.rb')

      def load_seed
        load(DEFAULT_SEED_FILE)
      end
    end # class SeedLoader
  end # class
end
