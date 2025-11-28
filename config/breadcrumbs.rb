crumb :products do
  link "Products", products_path
end

crumb :product do |product|
  link product.product_name, product_path(product)
  parent :products
end

crumb :new_products do
  link "New Products", new_products_path
  parent :products
end

crumb :recently_updated do
  link "Recently Updated", recently_updated_path
  parent :products
end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).