class AddMiningTypeToCoins < ActiveRecord::Migration[7.2]
  def change
    add_reference :coins, :mining_type, foreign_key: true
  end
end
