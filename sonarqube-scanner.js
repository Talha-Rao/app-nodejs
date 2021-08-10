const scanner = require('sonarqube-scanner');
scanner(
  {
  serverUrl: "http://localhost:9000",
  Token:"93c264512f39dddedc2a767e644961ffe4b641f5",
  options: {
    "sonar.sources": "./src"
  },
},
() => process.exit()
);
