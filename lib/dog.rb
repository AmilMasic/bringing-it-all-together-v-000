class Dog

  attr_accessor :name, :breed, :id


  def initialize(h)
    h.each {|k,v| public_send("#{k}=",v)}
  end


end
