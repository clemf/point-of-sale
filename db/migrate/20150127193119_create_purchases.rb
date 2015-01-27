class CreatePurchases < ActiveRecord::Migration
  def change
    create_table(:purchases) do |p|
      p.column(:customer_name, :string)

      p.timestamps
    end
  end
end
