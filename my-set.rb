def set_add_el hash, el
  hash[el] = true
  hash
end

def set_remove_el hash, el
  hash.delete(el)
  hash
end

def set_list_els hash
  hash.keys
end

def set_member? hash, el
  hash[el]
end

def set_union hashA, hashB
  hashA.merge(hashB)
end

def set_intersection hashA, hashB
  hash = {}
  hashA.each do |k, v|
    hash[k] = v if hashB.has_key?(k)
  end
  hash
end

def set_minus hashA, hashB
  hash = {}
  hashA.each do |k, v|
    hash[k] = v unless hashB.has_key?(k)
  end
  hash
end

p set_add_el({}, :x) == {:x => true}
p set_add_el({:x => true}, :x) == {:x => true} # This should automatically work if the first method worked
p set_remove_el({:x => true}, :x) == {}
p set_list_els({:x => true, :y => true}) == [:x, :y]
p set_member?({:x => true}, :x) == true
p set_union({:x => true}, {:y => true}) == {:x => true, :y => true}
p set_intersection({:x => true, :y => true}, {:y => true}) == {:y => true}# I'm not going to tell you how the last two work
p set_minus({:x => true, :y => true}, {:y => true}) == {:x => true} # Return all elements of the first array that are not in the second array, not vice versa
