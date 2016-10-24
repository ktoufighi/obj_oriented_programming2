class People
  def initialize(name, city)
    @name = name
    @city = city
  end

  def greetings
    puts "Hi, my name is #{@name} and I live in #{@city}."
  end
end

class Student < People
    def learn
      puts "I get it!"
    end
end

class Instructor < People
  def teach
    puts "Everything in Ruby is an Object."
  end
end

class Designer < People
  def work
    puts "I am a desinger."
  end
end


chris = Instructor.new('Chris', 'Toronto')
christa = Student.new('Christa', 'Barcelona')
kathy = Designer.new('Katayoon', 'Richmond Hill')

chris.greetings
christa.greetings
kathy.greetings

chris.teach
christa.learn
kathy.work

#christa.teach
#teach is a function of a method being assigned to Instructor and not the Student class.
