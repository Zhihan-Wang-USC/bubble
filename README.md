---
Hi All, well come to our project bubble!
---


---
I am not exposing my db,so if you what to use the server, replace those lines with your own info in "server/sample-server.js" line 216 to 223
---
```
const connection = mysql.createConnection({
    host: "tigofam.mysql.database.azure.com",
    user: 'bmomark@tigofam',
    password: 'mypassword',
    database: 'mydb',
    port: 3306,
	ssl: true
});
```
