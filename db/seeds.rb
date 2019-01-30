# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#----------------------------------
#執行 rake db:seed 將資料新增進 restaurants 資料表
RESTAURANTS_COUNT = 20

(1..RESTAURANTS_COUNT).each do |index|
restaurant = {
  name: "資料筆數-#{index}",
  description: "商品描述",
  address: "地址資料",
  opening_hours: "AM8:00-PM4:00",
  tel: "0987654321"
}

Restaurant.create(restaurant)

#----------------------------------


end