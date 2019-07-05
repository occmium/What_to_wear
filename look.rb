# encoding: utf-8
# Задача 26-3 — Что надеть?

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative 'libs/thing'
require_relative 'libs/collection'
thing = Thing.new
collection = Collection.new

puts "Программа, которая рекомендует, как одеться сегодня по погоде."
puts "\nКакая сейчас температура за окном? (можно с минусом)"
temp_on_street = STDIN.gets.to_i

list_of_things = thing.list_of_things
suitable = thing.suit_for_weather(list_of_things, temp_on_street)
types_of_things = collection.types_of_things(suitable)
system "cls"

puts "На улице #{temp_on_street}! Предлагаем сегодня надеть:\n\n"
types_of_things.each do |type|
  random_hash = collection.things_of_one_type(suitable, type).sample
  puts "#{random_hash[:cloth_name]} (#{random_hash[:cloth_type]}) #{random_hash[:temp_range]}      "
end
