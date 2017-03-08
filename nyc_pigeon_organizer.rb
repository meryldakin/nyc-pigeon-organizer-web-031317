require "pry"

def nyc_pigeon_organizer(data)
  #gather all names
  all_names_arr = []
  data.each do |attribute, info_data|
    all_names_arr = info_data.values
  end

  names_arr = all_names_arr.flatten #now all names gathered into one array

  #make hash with names as keys
  organized_pigeons = {}
  names_arr.each do |name|
    organized_pigeons[name] = {
      color: [],
      gender: [],
      lives: []
    }
  end
  organized_pigeons # now have our hash to populate

  #populate each pigeon with his appropriate info
  #loop through the original hash and when a bird name == ours, push data to the
  #appropriate arrays

  data.each do |attribute, info_hash|
    info_hash.each do |determiner_key, name_arr|
      organized_pigeons.each do |bird_name, hash_of_arrays|
        if name_arr.include?(bird_name)
          hash_of_arrays[attribute] << determiner_key.to_s
        end
      end
    end
  end
  
  organized_pigeons


end
