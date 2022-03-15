class Post
  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
  end

  def to_strings
  end

  def save
    file = File.new(file_path, "w")

    for item in strings do
      file.puts(item)
    end

    file.close
  end

  def file_path
    current_path = __dir__ # File.dirname(__FILE__)

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
  end
end