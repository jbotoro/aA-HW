def biggest_fish(fishes)
  fishes.each_with_index do |fish, idx1|
    max_length = true
    
    fishes.each_with_index do |other_fish, idx2|
      next if idx1 == idx2
      max_length = false if other_fish.length > fish.length
    end
    
    return fish if max_length
  end

end