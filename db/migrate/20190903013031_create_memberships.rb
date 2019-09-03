class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.string :memberable_type
      t.integer :memberable_id
      t.integer :user_id

      t.timestamps
    end
  end
end
