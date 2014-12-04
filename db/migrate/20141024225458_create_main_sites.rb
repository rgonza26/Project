class CreateMainSites < ActiveRecord::Migration
  def change
    create_table :main_sites do |t|

      t.timestamps
    end
  end
end
