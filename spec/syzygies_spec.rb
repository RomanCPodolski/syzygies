require 'spec_helper'

describe Syzygies do
  it 'has a version number' do
    expect(Syzygies::VERSION).not_to be nil
  end

  it 'should take two words as commands from the commandline' do
    expect(false).to eq(true)
  end

	it 'should display a help if the argument list is bigger / smaller than 2' do
    expect(false).to eq(true)
	end

	it 'should load the word list' do
		expect(true).to eq false
  end

  it "should find the shortest path from 'PEN' to 'PAPER'" do
		expect(true).to eq false
  end

  it "should find the shortest path from 'ACORN' to 'OAK'" do
		expect(true).to eq false
  end

  it "should find the shortest path from 'EARTHQUAKE' to 'TSUNAMI'" do
		expect(true).to eq false
  end

  it "should find the shortest path from 'STARSHIP' to 'ENTERPRISE'" do
		expect(true).to eq false
  end

	it "should run no longer than 60 minutes" do 
		expect(true).to eq false
	end

  it 'should build a graph from the word list' do
		expect(true).to eq false
  end

end
