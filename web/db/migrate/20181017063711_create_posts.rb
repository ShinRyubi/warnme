class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.references :incident, index: true, foreign_key: {on_delete: :nullify}
      t.references :user, index: true, foreign_key: {on_delete: :nullify}
      t.string :user_pic
      t.text :content
      t.text :content_local

      t.timestamps
    end
  end
end
