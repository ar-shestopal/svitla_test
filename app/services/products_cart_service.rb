# TODO use JSON string, handle multiple aadition of the same id
module ProductsCartService
  class << self
    def add_to_cookies(cookies, params)
      id = params[:id]
      products = cookies[:products] || ''
      unless products.empty?
        products = products_to_a(products)
        products << id unless products.include?(id)
        cookies[:products] = products.join(' ')
      else
        cookies[:products] = id
      end
    end

    def products_from_cart(cookies)
      products = products_to_a(cookies[:products])
      Product.where(id: products)
    end

    def count_products(cookies)
      products = cookies[:products]
      return 0 unless products
      products_to_a(products).size
    end

    def delete_from_cart(cookies, id)
      products = products_to_a(cookies[:products])
      products.delete(id)
      cookies[:products] = products.join(' ')
    end

    private

    def products_to_a(products)
      products.split(' ')
    end
  end
end
