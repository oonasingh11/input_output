class ProductivityApp
  attr_accessor :data

  def initialize
    @data = {}
  end

  def schedule_time_block(date, time_block)
  #This is a method to time block your schedule.
    if @data[date].nil?
      @data[date] = { time_blocks: [time_block]}
    else
      @data[date][:time_blocks] << time_block
    end
  end

  def add_habit(date, habit)
  #This is a method to add habits to your day.
    if @data[date].nil?
      @data[date] = { habits: [habit]}
    else
      @data[date][:habits] << habit
    end
  end

  def track_habit(date, habit)
  #This method tracks whether or not habits are done.
    if @data[date].nil? || @data[date][:habits].nil?
      return nil
    end

    index = @data[date][:habits].find_index(habit)
    if index.nil?
      return nil
    else
      @data[date][:habits][index] = "#{habit} (done)"
    end
  end

  def add_actionable(date, actionable)
  #This method allows you to add what actionables you have to work towards bigger goals.
    if @data[date].nil?
      @data[date] = { actionables: [actionable] }
    else
      @data[date][:actionables] << actionable
    end
  end

  def retrieve_actionables(date)
    #This method allows you to find what actionables are for the given date.
    if @data[date].nil? || @data[date][:actionables].nil?
      return nil
    else
    @data[date][:actionables]
    end
  end

  def save_data
    # This method writes @data in the file
    File.open("data.txt", "w") do |f|
      f.write(@data.to_json)
    end
  end

  def load_data
    # This method loads @data within the file, specifically it checks first
    #if file exists and then reads its contents and parses it into
    #a Ruby object using parse
    if File.exist?("data.txt")
      @data = JSON.parse(File.read("data.txt"))
    end
  end
end
