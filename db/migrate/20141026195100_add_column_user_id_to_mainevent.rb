class AddColumnUserIdToMainevent < ActiveRecord::Migration
  def change
    add_column :mainevents, :user_id, :integer
  end
end
