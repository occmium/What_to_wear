# encoding: utf-8
# Задача 26-3 — Что надеть?
# Задача 31-5 — Тесты на «Что надеть?»

require 'rspec'
require_relative '../lib/thing'

describe 'Thing' do
  t = Thing.from_file("#{__dir__}/fixtures/exam_01_07/pattern.txt")

  it "are the strings from file read correctly?" do
    expect(t.cloth_name).to eq "Name"
    expect(t.cloth_type).to eq "Type"
    expect(t.temp_range).to eq -1..1
    expect(t.to_s).to eq "Type рекомендую: Name! По погоде: -1..1 градусов."
  end

  it "should true" do
    (-1..1).each { |integer| expect("#{integer} = #{t.suit_for_weather?(integer)}").to eq "#{integer} = true" }
  end

  it "should false" do
    (-40..40).each do |integer|
      expect("#{integer} = #{t.suit_for_weather?(integer)}").to eq "#{integer} = false" if !(-1..1).include?(integer)
    end
  end

  it "<to_s> method verification is not required!" do
    # never do
  end
end
