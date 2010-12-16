begin
  require 'awesome_print'
rescue LoadError
  require 'pp'
end

  

class Object

  if defined?(::AwesomePrint)
    def tapp(tag=nil)
      tap { 
        print "#{tag}=" if tag
        ap block_given? ? yield(self) : self 
      }
    end
  else
    def tapp(tag=nil)
      tap { 
        print "#{tag}=" if tag
        pp block_given? ? yield(self) : self 
      }
    end
  end

  def taputs(tag=nil)
    tap { 
      print "#{tag}=" if tag
      puts block_given? ? yield(self) : self 
    }
  end
end
