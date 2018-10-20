class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|

      t.references :user, index: true, foreign_key: {on_delete: :nullify}
      t.integer :target_id
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
