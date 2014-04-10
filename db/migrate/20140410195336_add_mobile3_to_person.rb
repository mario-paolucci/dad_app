class AddMobile3ToPerson < ActiveRecord::Migration
  def change
    add_column :people, :tel4, :string
    add_column :people, :priorita, :string
  end
end
