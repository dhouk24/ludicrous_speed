class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |word|
      word.string :value
      word.integer :length
    end
  end
end
