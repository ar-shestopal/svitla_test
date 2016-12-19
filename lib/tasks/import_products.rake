namespace :db do
  desc "Import products form file"
  task :import_products => [:environment] do
    puts "Start import of data from lib/assets/products.json"
    begin
      products_hash = JSON.parse(File.read(
        Rails.root.join('lib', 'assets', 'products.json')),
        symbolize_names: true)
      products_hash[:products].each do |product|
        puts "\t Creating product with params #{product}"
        Product.create(product)
      end
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    end
    puts "Done! #{Product.count} products created"
  end
end

