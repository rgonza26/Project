class CreateMainevents < ActiveRecord::Migration
  def change
    create_table :mainevents do |t|
      t.string :name
      t.datetime :date
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
