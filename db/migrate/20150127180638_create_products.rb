class CreateProducts < ActiveRecord::Migration
  def change
    create_table(:products) do |p|
      p.column(:name, :string)
      p.column(:price, :float)

      p.timestamps
    end
  end
end
