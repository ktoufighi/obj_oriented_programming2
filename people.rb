class People
  def initialize(name)
    @name = name
  end

  def greetings
    puts "Hi, my name is #{@name}"
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

class Coder < People
  def learn
    puts "I am struggling with learning to code in Ruby"
  end
end


chris = Instructor.new('Chris')
christa = Student.new('Christa')
kathy = Coder.new('Katayoon')

chris.greetings
christa.greetings
kathy.greetings


chris.teach
christa.learn

#christa.teach
#teach is a function of a method being assigned to Instructor and not the Student class.
