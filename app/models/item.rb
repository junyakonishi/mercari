class Item < ApplicationRecord
  belongs_to :category


  with_options presence: true do
    validates :name
    validates :info
    validates :category
    validates :status_id
    validates :delivery_fee_id
    validates :prefecture_id
    validates :delivery_days_id
    validates :price
    validates :image
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :status
  belongs_to_active_hash :delivery_days
  belongs_to_active_hash :delivery_fee
end
