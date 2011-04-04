module TasksHelper

	def connected_people(connections) 		
		@person = Array.new
		connections.each do |obj|
			@person.push(Person.where(:id => obj.person_id))
		end
		@person		
	end


end
