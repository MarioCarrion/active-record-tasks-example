# frozen_string_literal: true

class CreateCatsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :nickname
      t.integer :age
    end
  end
end
