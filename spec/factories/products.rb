FactoryGirl.define do
  factory :product do
    name FFaker::Product.product_name
    brand FFaker::Product.brand
    model { "Model_#{FFaker::Product.brand}" }
    sku { SecureRandom::uuid }
    price 1.5
    desc { "Product Model_#{FFaker::Product.brand}" }
  end
end
