class Timer
  def initialize
    @seconds = 0
    @time_string = "00:00:00"
  end

  attr_accessor :seconds
  attr_accessor :time_string

  def seconds=(input)
    @seconds=input

    #number of hours, leftover minutes, and leftover seconds
    hourNum = @seconds/3600
    minuteNum = (@seconds - hourNum*3600)/60
    secondNum = @seconds - hourNum*3600 - minuteNum*60

    #actually displayed digits ab:cd:ef
    a = hourNum/10
    b = hourNum%10
    c = minuteNum/10
    d = minuteNum%10
    e = secondNum/10
    f = secondNum%10

    a = a.to_s
    b = b.to_s
    c = c.to_s
    d = d.to_s
    e = e.to_s
    f = f.to_s

    @time_string= a+b + ":"+c+d+":"+e+f
  end
end
