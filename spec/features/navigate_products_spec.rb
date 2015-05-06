require 'rails_helper'

describe "Navigating products" do
  it "allows navigation from the show page to the index page" do
    product = Product.create(name: "Keyboard")

    visit product_url(product)

    click_link "All Products"

    expect(current_path).to eq(products_path)
  end

  it "allows navigation from the index page to the show page" do
    product = Product.create(name: "Keyboard")

    visit products_url

    click_link product.name

    expect(current_path).to eq(product_path(product))
  end
end
