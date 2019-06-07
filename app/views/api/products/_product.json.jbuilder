json.id product.id
json.name product.name
json.description product.description
json.discounted product.is_discounted?
json.in_stock product.in_stock
json.supplier_id product.supplier.id #the supplier method is a model method written for a  product
json.supplier_name product.supplier.name
json.supplier_email product.supplier.email
json.supplier_phone_number product.supplier.phone_number
json.images product.images
json.current_user current_user
json.category_names product.category_names

json.formatted do
json.price number_to_currency(product.price)
json.tax number_to_currency(product.tax)
json.total number_to_currency(product.total)
end
