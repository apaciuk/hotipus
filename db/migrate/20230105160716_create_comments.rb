class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments, id: :uuid do |t|
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.belongs_to :commentable, polymorphic: true, null: false, type: :uuid
      t.text :body, null: false, default: "", limit: 65535, after: :title, comment: "Comment body"
      t.integer :parent_id, null: true, after: :body, comment: "Parent comment id", type: :uuid, index: true

      t.timestamps
    end
  end
end
