class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :content
      t.text :content_local
      t.string :kind
      t.string :photo # for url seeding

      t.timestamps
    end
  end
end
