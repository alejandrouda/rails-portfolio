# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "Deleting packages..."
Package.delete_all
p "Deleting services..."
Service.delete_all

p "Creating packages..."

restaurant_package = Package.new(
    name:"Web corporativa",
    description: "a",
    price: 490
)

restaurant_package.save!
p restaurant_package

web_package = Package.new(
    name:"Restaurante",
    description: "a",
    price: 390
)

web_package.save!
p web_package

online_store_package = Package.new(
    name:"Tienda online",
    description: "a",
    price: 790
)

online_store_package.save!
p online_store_package

custom_design_package = Package.new(
    name:"Sitio web personalizado",
    description: "a",
    price: 25
)

custom_design_package.save!
p custom_design_package

p"Packages created..."

p "Creating services..."

restaurant_service = Service.new(
    name:"Web corporativa",
    title:"Funcionalidad y diseño",
    description: "Give consumers seamless access to your product catalog via AI-powered search, discovery and recommendations, while increasing your online revenue."
)

restaurant_service.save!
p restaurant_service

web_service = Service.new(
    name:"Restaurante",
    title:"Mejora tu visibilidad en la web",
    description: "Give consumers seamless access to your product catalog via AI-powered search, discovery and recommendations, while increasing your online revenue."
)

web_service.save!
p web_service

online_store_service = Service.new(
    name:"Tienda online",
    title:"Vende tus productos online!",
    description: "Give consumers seamless access to your product catalog via AI-powered search, discovery and recommendations, while increasing your online revenue."
)

online_store_service.save!
p online_store_service

p "Services created..."

p "Seeds are successfuly completed!"