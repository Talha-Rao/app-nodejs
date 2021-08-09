const scanner = require('sonarqube-scanner');
scanner(
  {
  serverUrl: "http://localhost:9000",
  Token:"440866a9e923c050ba624340abf3bcce4aad0541",
  options: {
    "sonar.sources": "./src"
  },
},
() => process.exit()
);
