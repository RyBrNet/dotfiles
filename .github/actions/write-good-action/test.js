const writeGood = require('write-good');
const fs = require('fs');

try {

  var text = fs.readFileSync("TESTME.md", "utf8");

  var suggestions = writeGood(text);
  console.log(text);
  console.log(suggestions);
} catch (error) {
  console.log(error);
}
