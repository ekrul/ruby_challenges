class Pets
	def set_name=(pet_name)
		@name = pet_name
	end

	def get_name
		return @name
	end

	def set_owner=(owner_name)
		@owner = owner_name
	end

	def get_owner
		return @owner
	end

	def set_noise=(pet_noise)
    @noise = pet_noise
	end

  def get_noise
    return @noise
  end
end

my_ferret = Pets.new
my_ferret.set_name= "Fredo"
my_ferret.set_noise="squeeeeee"

my_parrot = Pets.new
my_parrot.set_name= "Budgie"
my_parrot.set_noise="cheep"

my_chincilla = Pets.new
my_chincilla.set_name= "Dali"
my_chincilla.set_noise="eeeep"

puts "#{my_ferret.get_name} says #{my_ferret.get_noise},
#{my_parrot.get_name} says #{my_parrot.get_noise},
and #{my_chincilla.get_name} says #{my_chincilla.get_noise}."

#puts my_ferret.inspect
#puts my_parrot.inspect
#puts my_chincilla.inspect
