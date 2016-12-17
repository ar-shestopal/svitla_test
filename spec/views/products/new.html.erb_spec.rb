require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :brand => "MyString",
      :model => "MyString",
      :sku => "MyString",
      :price => 1.5,
      :desc => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_brand[name=?]", "product[brand]"

      assert_select "input#product_model[name=?]", "product[model]"

      assert_select "input#product_sku[name=?]", "product[sku]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_desc[name=?]", "product[desc]"
    end
  end
end
