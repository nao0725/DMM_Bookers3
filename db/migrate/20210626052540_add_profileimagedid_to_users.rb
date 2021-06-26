class AddProfileimagedidToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Profileimagedid, :string
  end
end
