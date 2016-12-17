require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '#attributes' do
    it { should respond_to(:name) }
    it { should respond_to(:brand) }
    it { should respond_to(:model) }
    it { should respond_to(:sku) }
    it { should respond_to(:price) }
    it { should respond_to(:desc) }
  end
end
