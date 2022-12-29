# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def generate_letra()
    charset = Array('A'..'Z')
    charset.sample
end

marcaArr = ["Sony", "Samsung", "LG", "Dell", "HP", "Gateway", "Toshiba", "Lenovo"]
observacionArr = ["mal estado", "defectuoso de fábrica", "quebrado", "golpe interno", "electrónica con humedad", "rayones por uso", "reconstruido nuevamente", "deterioro físico"]

puts "Ingresando datos de forma masiva"

while Listado.count < 90 do
    Listado.create(marca: marcaArr[rand(0..7)], modelo: generate_letra() + rand(0..9).to_s + rand(0..9).to_s + rand(0..9).to_s +  rand(0..9).to_s + generate_letra(), codigo: 'CD' + rand(0..9).to_s + rand(0..9).to_s + rand(0..9).to_s +  rand(0..9).to_s, fecha_fab: rand(1999..2018).to_s + '/' + rand(1..12).to_s + '/' + rand(1..28).to_s, precio: rand(0..99).to_s + '.' + rand(0..99).to_s, observacion: observacionArr[rand(0..7)])
end

puts "Datos ingresados con éxito"