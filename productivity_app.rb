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

  end

  def retrieve_actionables(date)

  end
end
