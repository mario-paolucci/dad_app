class AddNoteToPerson < ActiveRecord::Migration
  def change
    add_column :people, :note, :text
  end
end
