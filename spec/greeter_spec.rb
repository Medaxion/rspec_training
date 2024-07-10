# frozen_string_literal: true

require 'page_objects/rspec_greeter'
describe 'RSpec Greeter' do
  it "should say 'Hello RSpec!' when it receives the greet() message" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet
    expect(greeting).to eq('Hello RSpec!')
  end

  it "should say 'Adios!' when it receives the goodbye() message" do
    goodbye = RSpecGreeter.new
    goodbye = goodbye.goodbye
    expect(goodbye).to eq('Adios')
  end
end
