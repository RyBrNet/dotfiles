const core = require('@actions/core');
const github = require('@actions/github');
const writeGood = require('write-good');

try {
  // `documents` input defined in action metadata file
  const documents = core.getInput('documents');
  console.log(`Input received was ${documents}`);  

  var suggestions = writeGood(documents);

  core.setOutput("improvments", suggestions);

  // Get the JSON webhook payload for the event that triggered the workflow
  const payload = JSON.stringify(github.context.payload, undefined, 2)
  console.log(`The event payload: ${payload}`);
} catch (error) {
  core.setFailed(error.message);
}
