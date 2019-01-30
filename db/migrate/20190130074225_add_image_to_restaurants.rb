class AddImageToRestaurants < ActiveRecord::Migration[5.1]
  def change
    # rails generate migration add_欄位名_to_表格名稱
    add_column(:restaurants, :images, :string)
    
  end
end
