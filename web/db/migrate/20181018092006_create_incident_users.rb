class CreateIncidentUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :incident_users do |t|

      t.references :incident, index: true, foreign_key: true
      t.integer :user_id
      t.timestamps
    end
  end
end
