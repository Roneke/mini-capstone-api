require "http"
system "clear"

products = HTTP.get("http//localhost:3000/each_product")
pp products.parse
