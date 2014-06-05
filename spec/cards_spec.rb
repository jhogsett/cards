require 'spec_helper'

describe Cards do
  it "can be instantiated" do
    c = Cards.new
    expect(c).to be_a Cards
  end

end
