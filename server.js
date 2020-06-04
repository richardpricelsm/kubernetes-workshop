const http = require("http");

const handleRequest = (request, response) => {
  console.log(process.env);
  console.log("Received request for URL: " + request.url);
  response.writeHead(200);
  response.end("Hello World");
};
var app = http.createServer(handleRequest);
app.listen(9000);
