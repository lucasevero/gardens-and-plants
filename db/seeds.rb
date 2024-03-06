# Cleaning up
if Rails.env.development?
  Garden.destroy_all
  Plant.destroy_all
end

# Create gardens
my_garden = Garden.create!(
  name: "My garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

other_garden = Garden.create!(
  name: "My other garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

# Create plants
Plant.create(
  name: "Pau Brasil",
  garden: my_garden,
  image_url: "https://apremavi.org.br/wp-content/uploads/2023/05/pau-brasil-foto-wigold-b-schaffer.jpg"
)

Plant.create(
  name: "Costela de Adão || Adam's Rib",
  garden: my_garden,
  image_url: "https://cdn.awsli.com.br/2500x2500/1874/1874817/produto/228671879/whatsapp-image-2021-06-22-at-15-54-33-vqs4ifm9dq.jpeg"
)
