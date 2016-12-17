require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name",
        :brand => "Brand",
        :model => "Model",
        :sku => "Sku",
        :price => 2.5,
        :desc => "Desc"
      ),
      Product.create!(
        :name => "Name",
        :brand => "Brand",
        :model => "Model",
        :sku => "Sku",
        :price => 2.5,
        :desc => "Desc"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Sku".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
  end
end
