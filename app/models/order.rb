class Order < ApplicationRecord
  has_many :order_items
  belongs_to :account, optional: :true
  before_create :update_status

  def calculate_total
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  def update_total
      self.total_price = calculate_total
    end

  private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end


  end
