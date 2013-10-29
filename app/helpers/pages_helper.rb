module PagesHelper
  def time_period(time)
    @timepassed = time
    if @timepassed < 5
      @timeperiod = "凌晨"
    elsif @timepassed >= 5 && @timepassed < 12
      @timeperiod = "上午"
    elsif @timepassed >= 12 && @timepassed < 18
      @timeperiod = "下午"
    elsif @timepassed >= 17 && @timepassed <= 24
      @timeperiod = "晚上"
    end
  end
  
  def time
    Time.now.seconds_since_midnight/3600
  end
end
