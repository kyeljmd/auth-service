# Authorization Server 

A Spring powered service for issuing Authorization tokens(JWT) for different services. 

This project uses an in-memory credentials for quick bootstrapping. 

#Requesting Access token 


Perform a Post Request on the given url

```http://localhost:8080/oauth/token```

```curl -X POST -vu myappclient:myappsecret http://localhost:8080/oauth/token -d "password=password1&username=user01&grant_type=password&scope=webclient"```

Access a sample resource through curl using the generated token 


```curl -X GET http://localhost:8080/user -H "Authorization: Bearer <replace with actual token>"```
