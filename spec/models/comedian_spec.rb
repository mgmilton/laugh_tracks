RSpec.describe Comedian do
  describe "Class Methods" do
    describe ".average_age" do
      it "returns average_age" do
        Comedian.create(name: "Matt", age: 29)
        Comedian.create(name: "Cam", age: 27)

        expect(Comedian.average_age).to eq(28)
      end
    end
  end
end
