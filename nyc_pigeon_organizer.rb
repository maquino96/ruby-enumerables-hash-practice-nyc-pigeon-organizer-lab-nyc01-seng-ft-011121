def nyc_pigeon_organizer(data)
  
  result_hash = {}
  pigeon_list = [] 
  data[:gender][:male].each { |el| pigeon_list.push(el) }
  data[:gender][:female].each { |el| pigeon_list.push(el)}
  
  #puts data[:gender][:male]
  #puts pigeon_list
  
  pigeon_list.each do |el|
    result_hash[el] = {
    :color => [],
    :gender => [],
    :lives => []
  }
  end 

  #puts result_hash  

  data.each do |o_key, o_value|
    data[o_key].each do |i_key, i_value|
      data[o_key][i_key].each { |ele| result_hash[ele][o_key].push(i_key.to_s)}
    end
  end

result_hash
end


