class TodoList
attr_accessor :list
attr_reader :list

  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(item)
    @list << item
    return @list
  end

   def delete_item(item)
    item = @list.delete(item)
  end

  def get_item(index)
    return @list[index]
  end

end


todolist = TodoList.new(["do the dishes", "mow the lawn"])
todolist.get_items
todolist.add_item("mop")
todolist.delete_item("do the dishes")
todolist.get_item(0)
