# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def item_prefix(item)
    item.new_record? ? 'new' : 'existing'
  end
end
