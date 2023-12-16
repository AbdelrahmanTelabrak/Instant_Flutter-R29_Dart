/* 
Create a List of Users.
  -> Every user has his personal data {username, email, password}, and a bunch of orders.
  -> Every order include 1 or more product.
  -> Every product has {id, Name, price}.
*/
void main(){
  var users = [
    {
      "username": "user001",
      "email": "user001@gmail.com",
      "password": "123456789",
      "orders": [
        {
          "order_id": "32165",
          "total_price": 25000,
          "products": [
            {
              "product_id": "15sdf56",
              "product_name": "laptop",
              "product_price": 20000
            },
            {
              "product_id": "15shh589",
              "product_name": "Monitor",
              "product_price": 3000
            },
            {
              "product_id": "5934sdgs99",
              "product_name": "Mouse&keyboard combo",
              "product_price": 2000
            }
          ]

        },
        {
          "order_id": "32165",
          "total_price": 25000,
          "products": [
            {
              "product_id": "15sdf56",
              "product_name": "laptop",
              "product_price": 20000
            },
            {
              "product_id": "15shh589",
              "product_name": "Monitor",
              "product_price": 3000
            },
            {
              "product_id": "5934sdgs99",
              "product_name": "Mouse&keyboard combo",
              "product_price": 2000
            }
          ]

        }
      ]
    },
    {
      "username": "user434",
      "email": "user434@gmail.com",
      "password": "123456789",
      "orders": [
        {
          "order_id": "32165",
          "total_price": 25000,
          "products": [
            {
              "product_id": "15sdf56",
              "product_name": "laptop",
              "product_price": 20000
            },
            {
              "product_id": "15shh589",
              "product_name": "Monitor",
              "product_price": 3000
            },
            {
              "product_id": "5934sdgs99",
              "product_name": "Mouse&keyboard combo",
              "product_price": 2000
            }
          ]

        },
        {
          "order_id": "32165",
          "total_price": 25000,
          "products": [
            {
              "product_id": "15sdf56",
              "product_name": "laptop",
              "product_price": 20000
            },
            {
              "product_id": "15shh589",
              "product_name": "Monitor",
              "product_price": 3000
            },
            {
              "product_id": "5934sdgs99",
              "product_name": "Mouse&keyboard combo",
              "product_price": 2000
            }
          ]

        }
      ]
    }
  ];

  print(users);
}
