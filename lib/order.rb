require_relative 'menu'

class Order

  attr_accessor :basket, :total_order, :order_amount, :add_to_order

  def initialize(menu = Menu.new)
    @menu = menu
    @basket = []
    @order_amount = []
  end

  def add_to_order(choice)
    @basket << choice
    puts "Added #{choice} to your order."
  end

  def total_order
    @basket.each do |item|
      @menu.menu_hash.each do |dish, price|
        if item == dish
          @order_amount << price.to_i
        else
          "Error with order"
        end
      end
    end
  @order_amount
  total = order_amount.sum
  return total
end

end
