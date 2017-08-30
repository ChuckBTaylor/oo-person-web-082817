class Person
  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def happiness=(hap)
    @happiness = hap
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene=(hyg)
    @hygiene = hyg
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  def get_paid(num)
    @bank_account += num
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(other)
    self.happiness += 3
    other.happiness += 3
    "Hi #{other.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(callee, topic)
    case topic
    when "politics"
      self.happiness -= 2
      callee.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      callee.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end
