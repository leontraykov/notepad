require 'date'

class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts "Что нужно сделать?"
    @text = STDIN.gets.chomp

    puts "К какой дате это нужно сделать? (Дату введите в формате ДД.ММ.ГГГ)"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)

  end

  def to_strings
        time_string = "Создано: #{@created_at.strftime("%Y. %m. %d, %H: %M: %S")}"

        deadline = "Крайний срок - #{@due_date}"

        return [deadline, @text, time_string]
  end
end