class ItemizedTotalSerializer < ActiveModel::Serializer
  attributes :id, :line_item_total

  def line_item_total
    sum = number_to_currency(object)
    sum.to_s
  end
end
