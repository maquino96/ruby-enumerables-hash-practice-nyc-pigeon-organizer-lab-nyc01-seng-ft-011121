
#pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
#}

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

#nyc_pigeon_organizer(pigeon_data)

#sorted_data = { 
  "Alex"=>{ :color=>["white", "brown"], 
            :gender=>["male"], 
            :lives=>["Central Park"]},
            
  "Theo"=>{ :color=>["purple", "grey"], 
            :gender=>["male"], 
            :lives=>["Subway"]}, 
            
  "Peter Jr."=>{  :color=>["purple", "grey"], 
                  :gender=>["male"], 
                  :lives=>["Library"]}, 
                  
  "Andrew"=>{ :color=>["white"], 
              :gender=>["male"], 
              :lives=>["City Hall"]},
              
  "Lucky"=>{  :color=>["purple"], 
              :gender=>["male"], 
              :lives=>["Central Park"]}, 
              
  "Queenie"=>{  :color=>["white", "brown"], 
                :gender=>["female"], 
                :lives=>["Subway"]}, 
                
  "Ms. K"=>{  :color=>["grey", "white"], 
              :gender=>["female"], 
              :lives=>["Central Park"]}
#}

