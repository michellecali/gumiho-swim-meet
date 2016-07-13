def idGeneration(competitorID, submit)
	#need to set competitorID to retrieve previous from storage (if it exists)
	#need to set submit to boolean when form submits
	if submit == true
		if competitorID == nil 
			competitorID = 0
		else 
			competitorID = competitorID +=1
		end
	end
end

puts idGeneration(nil, true)