class Cart
  attr_reader :contents

  def initialize(initial_contents)
    @contents = initial_contents || {}
  end

  def add_item(id)
    contents[id.to_s] = (contents[id.to_s] || 0) + 1
  end

  def count_of(id)
    contents[id.to_s].to_i
  end

  def total_count
    contents.values.sum
  end

  def cart_total
    running_total = 0
    contents.each do |item_id, quantity|
      item_cost = Item.find(item_id).price * quantity
      running_total += item_cost
    end
    running_total
  end

  def quantity(item_id)
    @contents[item_id.to_s]
  end

  def increase_item(item_id)
    @contents[item_id.to_s] += 1
  end

  def decrease_item(item_id)
    @contents[item_id.to_s] -= 1
    if @contents[item_id.to_s] <= 0
      remove_item(item_id)
    end
  end

  def remove_item(item_id)
    @contents.delete(item_id.to_s)
  end

  def parse_for_orders
    @contents.map do |item_id, quantity|
      price = Item.find(item_id).price
      {
        item_id: id.to_i,
        quantity: quantity,
        line_item_total: quantity * price
      }
    end
  end

end
