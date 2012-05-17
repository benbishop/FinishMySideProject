class AddShortNameToUnfinishedProject < ActiveRecord::Migration
  def change
      add_column(:unfinished_projects, :short_name, :string)
    end
end
