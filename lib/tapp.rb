require 'pp'

class Object
  def tapp(tag=nil)
    tap { 
      print "#{tag}=" if tag
      pp block_given? ? yield(self) : self 
    }
  end

  def taputs(tag=nil)
    tap { 
      print "#{tag}=" if tag
      puts block_given? ? yield(self) : self 
    }
  end
end
