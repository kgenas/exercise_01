# initialize nokogiri
nokogiri = Nokogiri.HTML(content)

# get the group of listings
listings = nokogiri.css('.b-list__items_nofooter .s-item')

# loop through the listings
listings.each do |listing|

    title = listing.css('.s-item__title').text.strip
    price = listing.css('.s-item__price').text.strip
    url = listing.css('.s-item__link').attr('href')
    product = {
        url: url,
        page_type: 'listings',
        title: title,
        price: price  
    }
    pages << product
end