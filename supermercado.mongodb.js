/* global use, db */
// MongoDB Playground
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.

const database = 'NEW_DATABASE_NAME';
const collection = 'NEW_COLLECTION_NAME';

// Create a new database.
use(database);

// Create a new collection.
db.createCollection(collection);

// The prototype form to create a collection:
/* db.createCollection( <name>,
  {
    capped: <boolean>,
    autoIndexId: <boolean>,
    size: <number>,
    max: <number>,
    storageEngine: <document>,
    validator: <document>,
    validationLevel: <string>,
    validationAction: <string>,
    indexOptionDefaults: <document>,
    viewOn: <string>,
    pipeline: <pipeline>,
    collation: <document>,
    writeConcern: <document>,
    timeseries: { // Added in MongoDB 5.0
      timeField: <string>, // required for time series collections
      metaField: <string>,
      granularity: <string>,
      bucketMaxSpanSeconds: <number>, // Added in MongoDB 6.3
      bucketRoundingSeconds: <number>, // Added in MongoDB 6.3
    },
    expireAfterSeconds: <number>,
    clusteredIndex: <document>, // Added in MongoDB 5.3
  }
)*/

// More information on the `createCollection` command can be found at:
// https://www.mongodb.com/docs/manual/reference/method/db.createCollection/



/* COLECCION: PRODUCTOS*/
db.producto.insertMany([{
    _id: 1,
    nombreProducto: "Frijoles enlatados",
    precio: 11500,
    categoria: "Enlatados"
    },{
    _id: 2,
    nombreProducto: "Cebolla",
    precio: 1500,
    categoria: "Verduras"
    },{
    _id: 3,
    nombreProducto: "Jabon Rey",
    precio: 2500,
    categoria: "Limpieza"},
                            {
    _id: 4,
    nombreProducto: "Suavizante",
    precio: 6800,
    categoria: "Limpieza"
    },{
    _id: 5,
    nombreProducto: "Manzana",
    precio: 800,
    categoria: "Frutas"},{
    _id: 6,
    nombreProducto: "Chilli con carne",
    precio: 13000,
    categoria: "Enlatados"
    },{
    _id:7,
    nombreProducto: "Leche entera",
    precio: 3000,
    categoria: "Lacteos"
    },{
    _id: 8,
    nombreProducto: "Pechuga de pollo",
    precio: 8500,
    categoria: "Carnes"
    }])

db.producto.find()



/*COLECCION CLIENTES */
db.clientes.insertMany([{
_id: 1,
nombres: "Sebastian",
apellidos: "Rojas Marin",
telefono: "3245786245",
direccion:"Carrera 35 n69-23"
},
{
_id: 2,
nombres: "Yamilé",
apellidos: "Piñeda",
telefono: "245785321",
direccion:"Calle 54 n25-04"
},
{
_id: 3,
nombres: "Camila",
apellidos: "Restrepo",
telefono: "302457564",
direccion:"Carrera 25 n74-21"
},
{
_id: 4,
nombres: "Carlos",
apellidos: "Valderrama",
telefono: "3245758522",
direccion:"Carrera 10 n32-10"
},
{
_id: 5,
nombres: "Miguel",
apellidos: "Ordoñez",
telefono: "2547254",
direccion:"Calle 24 n74-22"
}
])

db.clientes.find()


/*COLECCION PEDIDOS*/
db.pedidos.insertMany([
    {
  _id:1,
  nombre: "Sebastian",
  pedido: "Frijoles enlatados",
  monto: 2,
  direccion: "Carrera 35 n69-23"
  },{
  _id:2,
  nombre: "Carlos",
  pedido: "Cebolla",
  monto: 4,
  direccion: "Carrera 10 n32-10"
  },{
  _id: 3,
  nombre: "Miguel",
  pedido: "Jabon rey",
  monto: 1,
  direccion: "Calle 24 n74-22"
  },{
  _id:4,
  nombre: "Camila",
  pedido: "Pechuga de pollo",
  monto: 2,
  direccion: "Carrera 25 n74-21"
  }
  ])

  db.pedidos.find()