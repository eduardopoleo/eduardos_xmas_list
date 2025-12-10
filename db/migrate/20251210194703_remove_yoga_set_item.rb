class RemoveYogaSetItem < ActiveRecord::Migration[8.0]
  def up
    Item.where(title: "Yoga Set").destroy_all
  end

  def down
    # No need to recreate - item is in seeds file
  end
end
