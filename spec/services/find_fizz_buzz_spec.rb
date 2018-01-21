require 'rails_helper'
describe 'FindFizzBuzz' do
  describe "calling with an empty value" do
    it "has a size of 0" do
      call_with_no_value = FindFizzBuzz.call(1, 0)
      expect(call_with_no_value.length).to eql(0)
    end
  end

  describe "calling with a correct values" do
    it "has a size of 5" do
      call_with_a_result = FindFizzBuzz.call(1, 5)
      expect(call_with_a_result.length).to eql(5)
    end

    it "returns the correct value" do
      call_with_a_result =FindFizzBuzz.call(1, 5)
      expect(call_with_a_result).to eql([1, 2, "Fizz", 4, "Buzz"])
    end
  end

end


