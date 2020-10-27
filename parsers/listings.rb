html = Nokogiri.HTML(content)

products = html.css('.b-list__items_nofooter .s-item')
products.each do |product|
  name = product.css('.s-item__title').text.strip
  price = product.css('.s-item__price').text.strip
  url = product.css('.s-item__link').attr('href')
  page = {
    url: url,
    page_type: "listings",
    vars: {
      name: name,
      price: price
    }
  }
  pages << page
end
