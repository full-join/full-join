class RenamePostsToBlog < ActiveRecord::Migration[5.2]
  def change
    rename_table :posts, :blogs
    rename_column :likes, :post_id, :blog_id
  end
end
