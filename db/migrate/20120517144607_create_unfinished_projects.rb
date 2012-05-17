class CreateUnfinishedProjects < ActiveRecord::Migration
  def change
    create_table :unfinished_projects do |t|
      t.string :title
      t.text :description
      t.string :repo_url
      t.string :image_url

      t.timestamps
    end
  end
end
