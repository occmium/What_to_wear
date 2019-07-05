# encoding: utf-8
# Задача 26-3 — Что надеть?

class Thing
  def list_of_things
    list_of_files = Dir["data/*.txt"]

    list_of_files.map do |record_from_list|
      garment = File.readlines(record_from_list, encoding: "UTF-8", chomp: true)
      temp_range = garment[2].scan(/-?\d+/).map(&:to_i)
      garment[2] = temp_range[0]..temp_range[1]
      {
        :cloth_name => garment[0],
        :cloth_type => garment[1],
        :temp_range => garment[2]
      }
    end
  end

  def suit_for_weather(array, real_temp)
    array.select { |hash_cloth| hash_cloth[:temp_range].include?(real_temp) }
  end
end
