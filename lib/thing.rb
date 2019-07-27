# encoding: utf-8
# Задача 26-3 — Что надеть?

class Thing
  attr_reader :cloth_name, :cloth_type, :temp_range

  def self.from_file(file)
    thing = File.readlines(file, encoding: "UTF-8", chomp: true)
    temp_range = thing[2].scan(/-?\d+/).map(&:to_i)
    thing[2] = temp_range[0]..temp_range[1]
    new(thing[0], thing[1], thing[2])
  end

  def initialize(cloth_name, cloth_type, temp_range)
    @cloth_name = cloth_name
    @cloth_type = cloth_type
    @temp_range = temp_range
  end

  def suit_for_weather?(real_temp)
    @temp_range.include?(real_temp)
  end

  def to_s
    "#{@cloth_type} рекомендую: #{@cloth_name}! По погоде: #{@temp_range} градусов."
  end
end
