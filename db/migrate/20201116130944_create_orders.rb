class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :status
      t.string :message
      t.string :orderDetails

      t.timestamps
    end
  end
end
