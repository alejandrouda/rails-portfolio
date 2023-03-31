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

web_package = Package.new(
    name:"Emprendimientos",
    description: "Ideal para la presencia web de tu emprendimiento",
    price: 190,
    currency: "€",
    items:["Diseño web responsive", "Panel de admin", "3 meses de mantenimiento"]
)

web_package.save!
p web_package

restaurant_package = Package.new(
    name:"Restaurant",
    description: "La mejor opción para la presencia web de tu restaurante",
    price: 290,
    currency: "€",
    items:["Diseño web responsive", "Panel de admin", "3 meses de mantenimiento", "QR Carta digital interactiva", "Sistema de delivery"]
)

restaurant_package.save!
p restaurant_package

online_store_package = Package.new(
    name:"Tienda online",
    description: "Utiliza una plataforma de e-commerce de última generación",
    price: 990,
    currency: "€",
    items:["Diseño web responsive", "Panel de admin", "3 meses de mantenimiento", "Pagos seguros", "Búsqueda optimizada"]
)

online_store_package.save!
p online_store_package

p"Packages created..."

p "Creating services..."

restaurant_service = Service.new(
    name:"Restaurant",
    title:"Funcionalidad y diseño",
    description: "Somos expertos en servicios digitales para restaurantes. Contáctanos para conocer en detalle nuestros productos y servicios.",
    image: "https://res.cloudinary.com/dfyhqslry/image/upload/v1674067481/code%20web/Group_33_aorcii.svg",
    url:"#"
)

restaurant_service.save!
p restaurant_service

web_service = Service.new(
    name:"Emprendimientos",
    title:"Visibilidad en la web",
    description: "¿Tienes un negocio? Ofrecemos un servicio económico y de calidad para que ofrezcas un sitio web a tus clientes.",
    image: "https://res.cloudinary.com/dqstmox0s/image/upload/v1680023478/Group_33_x7ygnt.png",
    url:"#"
)

web_service.save!
p web_service

online_store_service = Service.new(
    name:"Tienda online",
    title:"Vende tus productos online!",
    description: "Si necesitas vender tus productos online trabajamos con las plataformas tecnológicas más importantes del mercado.",
    image: "https://res.cloudinary.com/dqstmox0s/image/upload/v1680024637/Group_33_fo5o5r.png",
    url:"#"
)

online_store_service.save!
p online_store_service

p "Policies created..."

aviso_legal = Policy.new(
    title:"Aviso legal",
    url_handle:"aviso-legal"
)

aviso_legal.save!
p aviso_legal

politica_privacidad = Policy.new(
    title:"Politica de privacidad",
    url_handle:"privacidad"
)

politica_privacidad.save!
p politica_privacidad

politica_cookies = Policy.new(
    title:"Politica de cookies",
    url_handle:"cookies"
)

politica_cookies.save!
p politica_cookies

p "Policies created..."

p "Seeds are successfuly completed!"