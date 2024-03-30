import { createServer } from "node:http";
import url from "node:url";

const server = createServer((req, res) => {
	const parsedUrl = url.parse(req.url, true);

  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end(`Hello ${parsedUrl.query.name ?? "world"}!

This server runs in the following environment: ${getEnvironment()}

Node.js version: ${getNodejsVersion()}`);
});

const host = "0.0.0.0";
const port = process.env.PORT || 3000;
server.listen(port, host, () => {
  console.log(`Listening on ${host}:${port}`);
});

function getEnvironment() {
	if (process.env.PROD) return "Production";
	if (process.env.CI) return "CI";
	return "Development"
}

function getNodejsVersion() {
  return process.versions.node;
}
