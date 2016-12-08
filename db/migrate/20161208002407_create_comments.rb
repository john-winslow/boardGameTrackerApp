class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.text :body
      t.references :commentable, :polymorphic => true

      t.timestamps
    end
  end
end