# encoding: utf-8
# Задача 26-3 — Что надеть?

class Collection
  def self.read_from_path(list_of_files, real_temp)
    collection = list_of_files.map {|element_of_array| Thing.from_file(element_of_array)}
    temp_based_collection = collection.select { |thing| thing if thing.suit_for_weather?(real_temp) }
    new(temp_based_collection)
  end

  def initialize(arg)
    @collection = arg
  end

  def types_of_things
    @types = @collection.map {|thing| thing.cloth_type}.uniq
  end

  def thing_of_each_type
    types_of_things.map do |one_type|
      @collection.select {|thing| thing if thing.cloth_type == one_type}.sample
    end
  end

  def to_s
    thing_of_each_type.join("\n")
  end
end




