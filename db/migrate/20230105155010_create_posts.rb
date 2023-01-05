class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, id: :uuid do |t|
      t.string :title, null: false, default: "", limit: 255, after: :id, comment: "Post title"
      t.text :body, null: false, default: "", limit: 65535, after: :title, comment: "Post body"

      t.timestamps
    end
  end
end
