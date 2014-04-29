class RenameBlogNameToTitle < ActiveRecord::Migration
  def up
    rename_column :blogs, :name, :title
  end

  def down
    rename_column :blogs, :title, :name
  end
end
