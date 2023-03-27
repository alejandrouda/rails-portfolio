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
p "Deleting policies..."
Policy.delete_all

p "Creating packages..."

restaurant_package = Package.new(
    name:"Restaurant",
    description: "a",
    price: 490,
    currency: "€",
    items:["Diseño web", "3 meses de mantenimiento", "QR Carta digital interactiva", "Sistema de delivery"]
)

restaurant_package.save!
p restaurant_package

web_package = Package.new(
    name:"Web corporativa",
    description: "a",
    price: 390,
    currency: "€",
    items:["Diseño web", "3 meses de mantenimiento"]
)

web_package.save!
p web_package

online_store_package = Package.new(
    name:"Tienda online",
    description: "a",
    price: 790,
    currency: "€",
    items:["Diseño web", "3 meses de mantenimiento", "Pagos seguros"]
)

online_store_package.save!
p online_store_package

custom_design_package = Package.new(
    name:"Sitio personalizado",
    description: "a",
    price: 25,
    currency: "€ / h",
    items:["Diseño web a medida", "Funcionalidades personalizadas", "Integraciones"]
)

custom_design_package.save!
p custom_design_package

p"Packages created..."

p "Creating services..."

restaurant_service = Service.new(
    name:"Restaurant",
    title:"Funcionalidad y diseño",
    description: "Give consumers seamless access to your product catalog via AI-powered search, discovery and recommendations, while increasing your online revenue.",
    image: "https://res.cloudinary.com/dfyhqslry/image/upload/v1674067481/code%20web/Group_33_aorcii.svg",
    url:"#"
)

restaurant_service.save!
p restaurant_service

web_service = Service.new(
    name:"Web corporativa",
    title:"Visibilidad en la web",
    description: "Give consumers seamless access to your product catalog via AI-powered search, discovery and recommendations, while increasing your online revenue.",
    image: "https://res.cloudinary.com/dfyhqslry/image/upload/v1674067481/code%20web/Group_33_aorcii.svg",
    url:"#"
)

web_service.save!
p web_service

online_store_service = Service.new(
    name:"Tienda online",
    title:"Vende tus productos online!",
    description: "Give consumers seamless access to your product catalog via AI-powered search, discovery and recommendations, while increasing your online revenue.",
    image: "https://res.cloudinary.com/dfyhqslry/image/upload/v1674067481/code%20web/Group_33_aorcii.svg",
    url:"#"
)

online_store_service.save!
p online_store_service

p "Policies created..."

aviso_legal = Policy.new(
    title:"Aviso legal",
    url_handle:"aviso-legal",
    content: "test l"
)

aviso_legal.save!
p aviso_legal

politica_privacidad = Policy.new(
    title:"Politica de privacidad",
    url_handle:"privacidad",
    content: "test p"
)

politica_privacidad.save!
p politica_privacidad

politica_cookies = Policy.new(
    title:"Politica de cookies",
    url_handle:"cookies",
    content: "test c"
)

politica_cookies.save!
p politica_cookies

p "Policies created..."

p "Seeds are successfuly completed!"