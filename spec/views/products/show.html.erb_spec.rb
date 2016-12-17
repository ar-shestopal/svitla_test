require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "Name",
      :brand => "Brand",
      :model => "Model",
      :sku => "Sku",
      :price => 2.5,
      :desc => "Desc"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Sku/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Desc/)
  end
end
