# POST: http://localhost:8080/api/auth/signup
```
{
    "username": "admin",
    "email": "admin@bezkoder.com",
    "password": "admin",
    "role": ["admin"]
},
{
    "username": "mod",
    "email": "mod@bezkoder.com",
    "password": "12345678",
    "role": ["mod", "user"]
},
{
    "username": "user",
    "email": "user@bezkoder.com",
    "password": "user",
    "role": ["user"]
}
```

# POST: http://localhost:8080/api/auth/signin
```
{
    "username": "admin",
    "password": "admin"
},
{
    "username": "mod",
    "password": "12345678"
},
{
    "username": "user",
    "password": "user"
}
```
