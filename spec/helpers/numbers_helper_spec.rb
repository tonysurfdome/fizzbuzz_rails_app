require 'rails_helper'

RSpec.describe NumbersHelper, type: :helper do
  describe "#fizzbuzz" do
    it "return html table given a list of values" do
      results = helper.fizzbuzz([1, 2, "Fizz", 4, "Buzz"])
      table = '<table class="table"><tr><td>1</td></tr><tr><td>2</td>' \
              '</tr><tr><td>Fizz</td></tr><tr><td>4</td></tr><tr><td>Buzz</td>'\
              '</tr></table>'
      expect(results).to eq(table)
     end
   end
end


