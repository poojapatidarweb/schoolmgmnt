class ChangeTypeOfDescriptonInDemos < ActiveRecord::Migration[7.1]
  def change
    reversible do |dir|
      dir.up do
        change_column :students, :description, :text
      end
      dir.down do
        change_column :students, :description, :string
      end
    end
  end
end
