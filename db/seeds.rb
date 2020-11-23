# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(
    { email: 'admin@mail.com', password: 'secret', address: 'Lorem ipsum dolor sit amet', avatar_url:'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50' }
  )
store = Store.create([
    { name:'Toko Sepeda Maju Royal', 
    address:'Jl. Ruko Permata Niaga 3 No.56, RT.004/RW.002, Tanah Tinggi, Kec. Tangerang, Kota Tangerang, Banten 15119'},
    { name:'Rodalink', 
    address:'Jl. Jend Sudirman Kav. 52-53, Lot.6, RT.5/RW.3, Senayan, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12190'}
])
product = Product.create([
{ 
    name: 'LANDROVER', 
    price: 4000.00, 
    description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqu',
    stock: 4,
    store: store[0]
},{ 
    name: '3 Sixty', 
    price: 3000.00,
    description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqu',
     stock: 4, 
     store: store[0]
},{ 
    name: 'DAHON K3', 
    price: 4000.00, 
    description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqu',
    stock: 4, 
    store: store[1]
},{ 
    name: 'ELEMENT ECOSMO 11 POLICE', 
    price: 3000.00, 
    description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqu',
    stock: 4, 
    store: store[1]
}
])

ProductVariant.create([
    { 
       name: 'Red',
       product: product[0]
    },
    {   
        name: 'Red',
        product: product[1]
    },
    {   name: 'Red',
        product: product[2]
    },
    {   name: 'Red',
        product: product[3]
    },
    {  
        name: 'Green',
        product: product[0]
    },
    {   name: 'Green',
        product: product[1]
    },
    {  
        name: 'Green',
        product: product[2]
    },
    {  
        name: 'Green',
        product: product[3]
    },
    { 
        name: 'Blue',
        product: product[0]
    },
    { 
        name: 'Blue',
        product: product[1]
    },
    { 
        name: 'Blue',
        product: product[2]
    },
    {  
        name: 'Blue',
        product: product[3]
    },
  ])
      