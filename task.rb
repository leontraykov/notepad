require 'date'

class Task < Post
  def initialize
    super

    @due_to = Time.now
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    puts "К каому числу нужно сделать? ДД.ММ.ГГГГ"
    input = STDIN.gets.chomp

    @due_to = Date.parse(input)
  end

  def to_strings
    time_string = "Создано:  #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n\r \n\r"
    deadline = "Крайний срок: #{@due_to}"
    return [deadline, @text, time_string]
  end
end