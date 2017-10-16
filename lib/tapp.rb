begin
  require 'awesome_print'
rescue LoadError
  require 'pp'
end

class Object
  if defined?(::AwesomePrint)
    def tapp(tag=nil)
      tap {
        if $stdout.tty?
          print "#{tag}=" if tag
          ap block_given? ? yield(self) : self
        end
      }
    end
  else
    def tapp(tag=nil)
      tap {
        if $stdout.tty?
          print "#{tag}=" if tag
          pp block_given? ? yield(self) : self
        end
      }
    end
  end

  def taputs(tag=nil)
    tap {
      if $stdout.tty?
        print "#{tag}=" if tag
        puts block_given? ? yield(self) : self
      end
    }
  end
end
