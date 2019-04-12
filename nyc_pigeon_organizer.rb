def nyc_pigeon_organizer(data)
	pigeon_list = {}
	data.each do |quality_key, values|
		values.each do |quality_value, bird_names|
			for bird_name in bird_names
				if !pigeon_list[bird_name]
					pigeon_list[bird_name] = {}
				end
				if !pigeon_list[bird_name][quality_key]
					pigeon_list[bird_name][quality_key] = []		
				end		
				pigeon_list[bird_name][quality_key].push(quality_value.to_s)	
			end
		end
	end
	pigeon_list
end