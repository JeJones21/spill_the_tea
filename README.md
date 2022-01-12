# 🫖 Spill the Tea 🫖
![Image](https://media2.giphy.com/media/hQdWtl18ibA58nil8t/giphy.gif?cid=e3b0c4425cf1c48c445a667177356110&rid=giphy.gif)  
[via GIPHY](https://media2.giphy.com/media/hQdWtl18ibA58nil8t/giphy.gif?cid=e3b0c4425cf1c48c445a667177356110&rid=giphy.gif)


### A Rails API for a fictional Tea Subscription Service.
##### Created in an 8-hour time frame for a take-home challenge; find the [project spec here](https://mod4.turing.edu/projects/take_home/take_home_be).

#### Framework
<p>
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />
</p>

#### Languages
<p>
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />
  <img src="https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white" />
</p>

#### Testing
<p>
<img src="https://img.shields.io/badge/rspec-16B7FB.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p>

#### Tools
<p>  
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-FF6E4F.svg?&style=flat&logo=postman&logoColor=white" />
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white" />
</p>

### Local Setup

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Set up the database: `rails db:{drop,create,migrate,seed}`

### [Schema Design]
![Screen Shot 2022-01-11 at 9 56 16 PM](https://user-images.githubusercontent.com/80985215/149055769-9fab9afd-370b-451a-a992-12c1b622c502.png)



![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

### Endpoints
#### Create a tea subscription for a customer

| Method   | URI                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `POST`    | `/api/v1/customers/:customer_id/subscriptions`| Creates a customer subscription in the database and returns the subscription attributes |

##### Example:  
```
{
    "data": {
        "id": "9",
        "type": "subscription",
        "attributes": {
            "title": "Kick In The Chest",
            "price": 24.99,
            "status": "active",
            "frequency": "biannually",
            "customer_id": 5,
            "tea_id": 5
        }
    }
}
```

#### Cancel a customer’s tea subscription

| Method   | URI                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `PATCH`    | `/api/v1//customers/:customer_id/subscriptions/:id`| Cancels a customer subscription in the database and returns subscription attributes with the updated status |

##### Example:  
```
{
    "data": {
        "id": "8",
        "type": "subscription",
        "attributes": {
            "title": "Kick In The Chest",
            "price": 24.99,
            "status": "cancelled",
            "frequency": "biannually",
            "customer_id": 5,
            "tea_id": 5
        }
    }
}
```

#### View all of a customer’s subsciptions, of active and cancelled status

| Method   | URI                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `GET`    | `/api/v1//customers/:customer_id/subscriptions`| Returns all tea subscriptions for a given customer |

##### Example:  
```
{
    "data": [
        {
            "id": "10",
            "type": "subscription",
            "attributes": {
                "title": "Kick In The Chest",
                "price": 24.99,
                "status": "active",
                "frequency": "monthly",
                "customer_id": 1,
                "tea_id": 5
            }
        },
        {
            "id": "13",
            "type": "subscription",
            "attributes": {
                "title": "Send Covid Packin",
                "price": 24.99,
                "status": "active",
                "frequency": "biweekly",
                "customer_id": 1,
                "tea_id": 4
            }
        },
        {
            "id": "14",
            "type": "subscription",
            "attributes": {
                "title": "Pass The Heck Out",
                "price": 24.99,
                "status": "active",
                "frequency": "biweekly",
                "customer_id": 1,
                "tea_id": 4
            }
        }
    ]
}
```

#### <ins>Project Configurations</ins>

* Ruby Version
    ```bash
    $ ruby -v
    ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
    ```

* [System Dependencies]
    ```bash
    $ rails -v
    Rails 5.7.2
    ```

* Database Creation
    ```bash
    $ rails db:{drop,create,migrate,seed}
    Created database 'tea_time_development'
    Created database 'tea_time_test'
    ```
    
* How to run the test suite:
    ```bash
    $ bundle exec rspec 
    ```

* [Local Deployment](http://localhost:3000), for testing:
    ```bash
    $ rails s
  => Booting Puma
  => Rails 5.2.6 application starting in development
  => Run `rails server -h` for more startup options
  Puma starting in single mode...
  * Version 3.12.6 (ruby 2.7.2-p137), codename: Llamas in Pajamas
  * Min threads: 5, max threads: 5
  * Environment: development
  * Listening on tcp://localhost:3000
  Use Ctrl-C to stop
    ```
