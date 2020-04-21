const writeGood = require('write-good');
const fs = require('fs');

try {

  //var text = fs.readFileSync("TESTME.md", "utf8");
  const documents = 'So the cat was stolen.\nIf only the owners had done better.\nParticularly me';
  console.log(`Input received was ${documents}`);

  var suggestions = writeGood(documents);
  
  console.log(suggestions);
  //console.log(`"Suggestions are ${suggestions}`);
} catch (error) {
  console.log(error);
}
