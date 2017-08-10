def hash_correct hash
  ret = Hash.new
  hash.each do |k, v|
    ret[v[0].to_sym] = v
  end
  ret
end

wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }

p hash_correct(wrong_hash) == { :b => "banana", :c => "cabbage", :d => "dental_floss", :e => "eel_sushi" }
