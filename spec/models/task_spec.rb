require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "class methods" do
    describe ".calc_total_time" do
      before do
        Task.create(name: "Clean Room", time: 10)
        Task.create(name: "Clean Room", time: 15)
        Task.create(name: "Clean Room", time: 20)
      end
      it "should returnes total time" do
        expect(Task.calc_total_time).to eq 45
      end
    end
  end
end
