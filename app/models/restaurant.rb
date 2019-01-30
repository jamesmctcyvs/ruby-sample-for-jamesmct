class Restaurant < ApplicationRecord
  #讓表單中的所有區塊都成為必填項目
  validates_presence_of :name
  
  mount_uploader :images, PhotoUploader
end
