class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :friend, foreign_key: true

      t.timestamps
    end
  end
end
