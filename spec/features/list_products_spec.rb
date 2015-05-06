require 'rails_helper'

describe "Viewing the list of products" do
  it "shows the products" do
    product1 = Product.create(name: "Shoe")
    product1 = Product.create(name: "Hat")
    product1 = Product.create(name: "Shirt")

    visit products_url

    expect(page).to have_text("3 Products")
    expect(page).to have_text("Shoe")
    expect(page).to have_text("Hat")
    expect(page).to have_text("Shirt")
  end
end
