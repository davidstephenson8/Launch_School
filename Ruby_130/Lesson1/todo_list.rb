class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end


# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo)
    raise TypeError.new("Can only add ToDo objects") unless todo.class == Todo
    @todos.push(todo)
  end

  def <<(todo)
    add(todo)
  end

  def size
    @todos.size
  end

  def first
    @todos.first
  end

  def last
    @todos.last
  end

  def to_a
    @todos
  end

  def done?
    @todos.all?{ |todo| todo.done? }
  end

  def item_at(num)
    @todos.fetch(num)
  end

  def mark_done_at(num)
    item_at(num).done!
  end

  def mark_undone_at(num)
    item_at(num).undone!
  end

  def done!
    @todos.each do |todo|
      todo.done!
    end
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def remove_at(num)
    @todos.delete(item_at(num))
  end

  def to_s
    puts "---- Todays Todos ----"
    @todos.each do |todo|
      puts todo
    end
  end

  def each
    counter = 0

    while counter < @todos.size
      yield @todos[counter]
      counter += 1
    end

    self
  end

  def select
    result = ToDoList.new(title)

    @todos.each do |todo|
      if yield(todo) == true
        result << todo
      end
    end

    result
  end

  def find_by_title(string)
    @todos.each do |todo|
      return todo if todo.title == string
    end
  end

  def all_done
    @todos.select do |todo|
      todo.done?
    end
  end

  def all_not_done
    @todos.select do |todo|
      todo.undone?
    end
  end

  def mark_done(string)
    @todos.each do |todo|
      todo.done! if todo.title == string
    end
  end

  def mark_all_done
    @todos.each do |todo|
      todo.done! 
    end
  end

  def mark_all_undone
    @todos.each do |todo|
      todo.undone!
    end
  end
  
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
todo4 = Todo.new("Buy milk")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)
list.add(todo4)

p list.find_by_title("Buy milk")
puts list
