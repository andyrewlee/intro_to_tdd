require 'rails_helper'

describe "Viewing an individual product" do
  it "shows the product details" do
    product = Product.create(name: "Wallet")
    visit product_url(product)
    expect(page).to have_text(product.name)
  end
end
