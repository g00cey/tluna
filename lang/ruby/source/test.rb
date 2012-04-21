##yeil
def my_map
	[yield(1), yield(2), yield(3)]
end

#p my_map {|i| i+1}
#prox
class SleepyPerson
	def register_handler(&handler)
		@event_handler = handler
	end
	def wake_up!
		@event_handler.call Time.now, "wake up"
	end
end
#john = SleepyPerson.new
#john.register_handler do |time, message| p [time, message] end
#john.wake_up!
#instanse method definition


##insetanse method
class Duration
	def display;puts self end
end
Duration.display
#duration = Duration.new
#duration.display

#attribute
class Duration
	def initialize(since,till)
		@since = since
		@till = till
	end
	attr_accessor :since, :till
end

#duration = Duration.new(Time.now,Time.now+5000)
#duration.till
#duration.since = Time.now

CENTRAL_REPOSITORY = Object.new
def CENTRAL_REPOSITORY.register(target)
	@registered_object ||= []
	unless @registered_objects.include? target
		@registered_objects << target
	end
end
def CENTRAL_REPOSITORY.unregister(target)
	@registered_objects ||= []
	@registered_objects.delete(target)
end

class Foo
	include Comparable
	def <=>(rhs)
		p rhs
	end
end
foo1 = Foo.new
foo2 = Foo.new
foo1 <=> foo2
