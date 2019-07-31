# encoding: utf-8
# Задача 26-3 — Что надеть?
# Задача 31-5 — Тесты на «Что надеть?»

require 'rspec'
require_relative '../lib/collection'
require_relative '../lib/thing'

describe 'Collection' do
  it "are the file from directory read correctly? exam from_01 to_07" do
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], -5).to_s
    ).to eq "Type_one рекомендую: Name_one! По погоде: -10..-5 градусов."
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], 5).to_s
    ).to eq "Type_two рекомендую: Name_two! По погоде: 5..10 градусов."
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], 0).to_s
    ).to eq "Type рекомендую: Name! По погоде: -1..1 градусов."
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], -3).to_s
    ).to eq ""
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], 3).to_s
    ).to eq ""
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], -11).to_s
    ).to eq ""
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_01_07/*.txt"], 11).to_s
    ).to eq ""
  end

  it "choose the type of clothes right? exam from_08 to_12" do
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_08_12/*.txt"], 0).types_of_things.sort
    ).to eq %w(Type Type_one Type_two)
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_08_12/*.txt"], 3).types_of_things.sort
    ).to eq %w(Type_two)
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_08_12/*.txt"], -3).types_of_things.sort
    ).to eq %w(Type_one)
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_08_12/*.txt"], 4).types_of_things.sort
    ).to eq %w()
    expect(
      Collection.read_from_path(Dir["#{__dir__}/fixtures/exam_08_12/*.txt"], -4).types_of_things.sort
    ).to eq %w()
  end

  it "checking a random selection does not seem possible" do
    # never do
  end

  it "<to_s> method verification is not required!" do
    # never do
  end
end
