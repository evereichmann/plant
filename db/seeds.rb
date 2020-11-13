# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
Plant.destroy_all

Order.create(id: 1, seller_name: "Chipo Nursery", country_origin: "Indonesia", units: "20",total_price: "264.60", date_order: "2020-09-22" , date_shipped: "2020-10-07", multiple: false)
Order.create(id: 2, seller_name: "Chipo Nursery", country_origin: "Indonesia", units: "8",total_price: "512.66", date_order: "2020-10-01", date_shipped: "2020-10-12", multiple: false)
Order.create(id: 3, seller_name: "Kazaina Store", country_origin: "Indonesia", units: "30",total_price: "1230", date_order: "2020-10-04", date_shipped: "2020-10-26", multiple: true)
Order.create(id: 4, seller_name: "Steve's Leaves", country_origin: "USA", units: nil, total_price: nil, date_order: nil , date_shipped: nil, multiple: true )
Order.create(id: 5, seller_name: "Jeremy", country_origin: "USA", units: nil, total_price: nil, date_order: nil , date_shipped: nil, multiple: true )
Order.create(id: 6, seller_name: "Chalet", country_origin: "USA", units: nil, total_price: nil, date_order: nil , date_shipped: nil, multiple: true )
Order.create(id: 7, seller_name: "EBAY", country_origin: "USA", units: nil, total_price: nil, date_order: nil , date_shipped: nil, multiple: true )
Order.create(id: 8, seller_name: "Facebook", country_origin: "USA", units: nil, total_price: nil, date_order: nil , date_shipped: nil, multiple: true )
Order.create(id: 9, seller_name: "Cultivate", country_origin: "USA", units: nil, total_price: nil, date_order: nil , date_shipped: nil, multiple: true )
Order.create(id: 10, seller_name: "Saputra", country_origin: "Indonesia", units: 25, total_price: 1070, date_order: "2020-10-24" , date_shipped: nil, multiple: true )
Order.create(id: 11, seller_name: "Kazaina Store", country_origin: "Indonesia" , units: 30, total_price: 1230 , date_order: "2020-11-03" , date_shipped: nil, multiple: true )


# Order.create(id: , seller_name: "", country_origin: "", units: nil, total_price: nil, date_order: nil , date_shipped: nil, multiple: true )

Plant.create(tag_number: 1 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "dead", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 2 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "dead", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 3 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "dead", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 96 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 97 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 98 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 99 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 100 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 101 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 102 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 103 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 104 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 105, order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 106 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 107 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 108 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 109, order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 110 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 111 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 112 , order_id: 1 , name: "Anthurium Crystallinum", unit_price: "13" , arrival_date: "2020-10-21" , condition: "poor", recovery_date: nil , sold: nil , price: nil )

Plant.create(tag_number:  16, order_id:  5, name: "Philodendron Burle Marx (Variegated)", unit_price: "80" , arrival_date: nil , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 17, order_id: 4, name: "Philodendron Burle Marx Fantasy", unit_price: "98" , arrival_date: nil , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 18, order_id: 4, name: "Philodendron Burle Marx Fantasy", unit_price: "118" , arrival_date: nil , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 74, order_id: 4, name: "Philodendron Burle Marx Fantasy", unit_price: "118" , arrival_date: "2020-10-28" , condition: "great", recovery_date: nil , sold: nil , price: nil )

Plant.create(tag_number: 9, order_id: 6, name: "Philodendron Florida Ghost", unit_price: "108" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )

Plant.create(tag_number: 54, order_id:  3, name: "Philodendron Florida Ghost", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 55, order_id:  3, name: "Philodendron Florida Ghost", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 56, order_id:  3, name: "Philodendron Florida Ghost", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 57, order_id:  3, name: "Philodendron Florida Ghost", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 58, order_id:  3, name: "Philodendron Florida Ghost", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 59, order_id:  3, name: "Philodendron Florida Ghost", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 60, order_id:  3, name: "Philodendron Florida Ghost", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 61, order_id:  3, name: "Philodendron Florida Ghost", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 62, order_id:  3, name: "Philodendron Florida Ghost", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 63, order_id:  3, name: "Philodendron Florida Ghost", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 64, order_id:  3, name: "Philodendron Gloriosum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 65, order_id:  3, name: "Philodendron Gloriosum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 66, order_id:  3, name: "Philodendron Gloriosum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 67, order_id:  3, name: "Philodendron Gloriosum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 68, order_id:  3, name: "Philodendron Gloriosum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 69, order_id:  3, name: "Philodendron Gloriosum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 70, order_id:  3, name: "Philodendron Gloriosum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 71, order_id:  3, name: "Philodendron Gloriosum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 72, order_id:  3, name: "Philodendron Gloriosum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 73, order_id:  3, name: "Philodendron Gloriosum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  44, order_id:  3, name: "Philodendron Melanochrysum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  45, order_id:  3, name: "Philodendron Melanochrysum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  46, order_id:  3, name: "Philodendron Melanochrysum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  47, order_id:  3, name: "Philodendron Melanochrysum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  48, order_id:  3, name: "Philodendron Melanochrysum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  49, order_id:  3, name: "Philodendron Melanochrysum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  50, order_id:  3, name: "Philodendron Melanochrysum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  51, order_id:  3, name: "Philodendron Melanochrysum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  52, order_id:  3, name: "Philodendron Melanochrysum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  53, order_id:  3, name: "Philodendron Melanochrysum", unit_price: "35" , arrival_date: "2020-11-07" , condition: "great", recovery_date: nil , sold: nil , price: nil )


Plant.create(tag_number: 19, order_id: 7, name: "Philodendron Hastatum Silver Sword", unit_price: "35" , arrival_date: nil, condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 20, order_id: 7, name: "Philodendron Hastatum Silver Sword", unit_price: "35" , arrival_date: nil, condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 21, order_id: 7, name: "Philodendron Hastatum Silver Sword", unit_price: "35" , arrival_date: nil, condition: "good", recovery_date: nil , sold: nil , price: nil )

Plant.create(tag_number: 28, order_id: 8, name: "Philodendron Lupinum", unit_price: "40" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 94, order_id: 8, name: "Philodendron Lupinum", unit_price: "40" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 95, order_id: 8, name: "Philodendron Lupinum", unit_price: "40" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )

Plant.create(tag_number: 23, order_id: 9, name: "Monstera Peru", unit_price: "60" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  22, order_id: 7, name: "Anthurium Silver Blush", unit_price: "86" , arrival_date: "2020-09-02" , condition: "good", recovery_date: nil , sold: nil , price: nil )

Plant.create(tag_number: 24, order_id: 4, name: "Monstera Standleyana 'albo variegata'", unit_price: "43" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number: 25, order_id: 4, name: "Monstera Standleyana 'albo variegata'", unit_price: "43" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )

Plant.create(tag_number:  36, order_id: 2, name: "Scindapsus Treubii Dark Form", unit_price: "50" , arrival_date: "2020-10-12" , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  37, order_id: 2, name: "Scindapsus Treubii Dark Form", unit_price: "50" , arrival_date: "2020-10-12" , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  38, order_id: 2, name: "Scindapsus Treubii Dark Form", unit_price: "50" , arrival_date: "2020-10-12" , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  39, order_id: 2, name: "Scindapsus Treubii Dark Form", unit_price: "50" , arrival_date: "2020-10-12" , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  40, order_id: 2, name: "Scindapsus Treubii Dark Form", unit_price: "50" , arrival_date: "2020-10-12" , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  41, order_id: 2, name: "Scindapsus Treubii Dark Form", unit_price: "50" , arrival_date: "2020-10-12" , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  42, order_id: 2, name: "Scindapsus Treubii Dark Form", unit_price: "50" , arrival_date: "2020-10-12" , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  43, order_id: 2, name: "Scindapsus Treubii Dark Form", unit_price: "50" , arrival_date: "2020-10-12" , condition: "good", recovery_date: nil , sold: nil , price: nil )

Plant.create(tag_number:  7, order_id: 7, name: "Scindapsus Treubii Moonlight", unit_price: "17" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  8, order_id: 7, name: "Scindapsus Treubii Moonlight", unit_price: "17" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  10, order_id: 7, name: "Scindapsus Treubii Moonlight", unit_price: "17" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  11, order_id: 7, name: "Scindapsus Treubii Moonlight", unit_price: "17" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  12, order_id: 7, name: "Scindapsus Treubii Moonlight", unit_price: "17" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  13, order_id: 7, name: "Scindapsus Treubii Moonlight", unit_price: "17" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  14, order_id: 7, name: "Scindapsus Treubii Moonlight", unit_price: "17" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )
Plant.create(tag_number:  15, order_id: 7, name: "Scindapsus Treubii Moonlight", unit_price: "17" , arrival_date: nil , condition: "good", recovery_date: nil , sold: nil , price: nil )

# Plant.create(tag_number:  , order_id:  , name: "", unit_price: "" , arrival_date: "" , condition: "", recovery_date: nil , sold: nil , price: nil )


