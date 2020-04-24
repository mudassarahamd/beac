class AddNameToExperts < ActiveRecord::Migration[6.0]
  def change
    add_column :experts, :first_name, :string
    add_column :experts, :last_name, :string
  end
end
