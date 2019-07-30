# encoding: utf-8
# Задача 26-3 — Что надеть?
# Задача 31-5 — Тесты на «Что надеть?»

require 'rspec'
require_relative '../lib/collection'
require_relative '../lib/thing'

describe 'Collection' do
  it "are the file from directory read correctly? exam_01" do
    (-10..-5).each do |integer|
      expect(
        "Для #{integer} #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], integer)}"
      ).to eq "Для #{integer} Type_one рекомендую: Name_one! По погоде: -10..-5 градусов."
    end
  end

  it "are the file from directory read correctly? exam_02" do
    (5..10).each do |integer|
      expect(
        "Для #{integer} #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], integer)}"
      ).to eq "Для #{integer} Type_two рекомендую: Name_two! По погоде: 5..10 градусов."
    end
  end

  it "are the file from directory read correctly? exam_03" do
    (-1..1).each do |integer|
      expect(
        "Для #{integer} #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], integer)}"
      ).to eq "Для #{integer} Type рекомендую: Name! По погоде: -1..1 градусов."
    end
  end

  it "are the file from directory read correctly? exam_04" do
    (-4..-2).each do |integer|
      expect(
        "Для #{integer} #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], integer)}"
      ).to eq "Для #{integer} "
    end
  end

  it "are the file from directory read correctly? exam_05" do
    (2..4).each do |integer|
      expect(
        "Для #{integer} #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], integer)}"
      ).to eq "Для #{integer} "
    end
  end

  it "are the file from directory read correctly? exam_06" do
    (-20..-11).each do |integer|
      expect(
        "Для #{integer} #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], integer)}"
      ).to eq "Для #{integer} "
    end
  end

  it "are the file from directory read correctly? exam_07" do
    (11..20).each do |integer|
      expect(
        "Для #{integer} #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], integer)}"
      ).to eq "Для #{integer} "
    end
  end

  it "choose the type of clothes right? exam_08" do
    (-1..1).each do |integer|
      expect(
        "For #{integer} - #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_08_12/*.txt"], integer).types_of_things.sort}"
      ).to eq "For #{integer} - [\"Type\", \"Type_one\", \"Type_two\"]"
    end
  end

  it "choose the type of clothes right? exam_09" do
    (2..3).each do |integer|
      expect(
        "For #{integer} - #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_08_12/*.txt"], integer).types_of_things}"
      ).to eq "For #{integer} - [\"Type_two\"]"
    end
  end

  it "choose the type of clothes right? exam_10" do
    (-3..-2).each do |integer|
      expect(
        "For #{integer} - #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_08_12/*.txt"], integer).types_of_things}"
      ).to eq "For #{integer} - [\"Type_one\"]"
    end
  end

  it "choose the type of clothes right? exam_11" do
    (4..10).each do |integer|
      expect(
        "For #{integer} - #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_08_12/*.txt"], integer).types_of_things}"
      ).to eq "For #{integer} - []"
    end
  end

  it "choose the type of clothes right? exam_12" do
    (-10..-4).each do |integer|
      expect(
        "For #{integer} - #{Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_08_12/*.txt"], integer).types_of_things}"
      ).to eq "For #{integer} - []"
    end
  end

  it "checking a random selection does not seem possible" do
    # never do
  end

  it "<to_s> method verification is not required!" do
    # never do
  end
end
