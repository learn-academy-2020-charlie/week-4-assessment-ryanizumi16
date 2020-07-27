# ASSESSMENT 4: Ruby Coding Practical Questions
# --------------------1) Create a method that takes in an array and returns an array with only odd numbers sorted from least to greatest.
fullArr1 = [4, 9, 0, '7', 8, true, 'hey', 7, 199, -9, false, 'hola']
# Expected output: [-9, 7, 9, 199]
fullArr2 = ['hello', 7, 23, -823, false, 78, nil, '67', 6, 'Number']
# Expected output: [-823, 7, 23]
# def odd_nums array do |number, index|
#   if (index %2 ==0) then
#     fullArr1.push(number)
#   end
# end
################2) Create a class called Bike that is initialized with a model, wheels, and a frame size. The default number of wheels is 2. Create a get_info method that returns a sentence with all the data from the bike object.
# Expected output example: 'The Trek bike has 2 wheels and a 168cm frame.'
################ 3) Add a bell to the bike class and create a method that will ring the bell when the method is called
# Expected output example: my_bike.ring_bell => 'Beep beep!'
##############4) Add a speedometer to the Bike class. The speed should be initialized at 0.
# Expected output example: my_bike.speed => 0
####################-5) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed. The brake method should decrease the speed. The bike cannot go negative speeds.
# Expected output example: my_bike.pedal_faster 10 => 10
# Expected output example: my_bike.brake 15 => 0
class Bike
  def initialize (model, wheels = 2, speed = 0, frame_size)
    @model = model
    @frame_size = frame_size
    @wheels = wheels
    @ring_bell = ring_bell
    @speed = speed
    @pedal_faster = 10
    @brake = 10
  end
  def set_model(model)
    @model = model
  end
  def get_model
    @model
  end
  def set_frame_size(frame_size)
    @frame_size = frame_size
  end
  def get_frame_size
    @frame_size
  end
  def set_speed(speed)
    @speed = speed
  end
  def get_speed
    @speed
  end
  def set_pedal_faster
    @pedal_faster = @pedal_faster
   end
   def get_pedal_faster
     @pedal_faster
   end
   def set_brake
     @brake = brake
   end
   def get_brake
     @brake
   end
   def brakes
     @pedal_faster - @brake
   end
  def ring_bell
     'Beep beep!'
  end
  def get_info
     "This #{@model} bike has #{@wheels} wheels and a frame size of #{@frame_size}."
    end
end
  my_bike = Bike.new 'ryan', 2, 16
  my_bike.set_model 'Trek'
  # puts my_bike.get_model
  my_bike.set_frame_size '168cm'
  # puts my_bike.get_frame_size
  my_bike.get_pedal_faster
  puts my_bike.get_info
  puts my_bike.ring_bell
  puts my_bike.get_speed
  puts my_bike.get_pedal_faster
  puts my_bike.brakes
