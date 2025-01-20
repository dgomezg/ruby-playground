class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line[/\[(\w+)\]\W+([\w\s]+)/, 2].strip
  end

  def log_level
    @line[/\[(\w+)\]/, 1].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
