require 'pry'
# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_writer :sure
    # def my_attr_accessor(attr)
    #     define_method(attr) do
          
    #       instance_variable_get "@#{attr.clamp(0,10)}"
    #     end
  
    #     define_method("#{attr}=") do |value|
    #       instance_variable_set "@#{attr.clamp(0,10)}", value  
    
    #     end
    # end
    # my_attr_accessor(":happiness")
    # my_attr_accessor(":hygiene")

    def initialize(given_name)
        @name = given_name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(int)
        @happiness = int
        @happiness = @happiness.clamp(0,10)
    end
    def hygiene=(int)
        @hygiene = int
        @hygiene = @hygiene.clamp(0,10)
    end
    def happiness
        @happiness.clamp(0,10)
    end
    def hygiene
        @hygiene.clamp(0,10)
    end
    def clean?
        @hygiene > 7 ? true : false
    end
    def happy?
        @happiness > 7 ? true : false
    end
    def get_paid(guallah)
        @bank_account += guallah
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        self.happiness = self.happiness + 3
        person.happiness = person.happiness + 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness = person.happiness - 2
            self.happiness = self.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness = person.happiness + 1
            self.happiness = self.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
