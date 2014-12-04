class CreateSiteEvents < ActiveRecord::Migration
  def change
    create_table :site_events do |t|
      t.string :name
      t.datetime :date
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
