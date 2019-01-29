var http = require('http');

//create a server object:
http.createServer(function (req, res) {

    if (req.method === "POST" && req.url ==="/takePhoto") {
    
        res.writeHead(200, { "Content-Type": "text/plain" });
        res.write(':-)');
        res.end();

    } else {
        res.writeHead(404, { "Content-Type": "text/plain" });
        res.end();
    }
}).listen(8089); //the server object listens on port 8080