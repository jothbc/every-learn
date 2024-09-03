// import { setTimeout } from 'timers/promises';
// import assert from 'assert';
// import { spawn } from 'child_process';
// import { $ } from 'zx';

// (async () => {
//   // Start the server process with 'pipe' stdio to capture output
//   const serverProcess = spawn('npm', ['start'], {
//     stdio: 'pipe', // Use 'pipe' to capture the stdout and stderr
//     shell: true,
//     detached: true
//   });

//   // Handle output and error events from the server process
//   serverProcess.stdout.on('data', (data) => {
//     console.log(`Server output: ${data}`);
//   });

//   serverProcess.stderr.on('data', (data) => {
//     console.error(`Server error: ${data}`);
//   });

//   // Ensure the server process is not blocking
//   serverProcess.unref();

//   // Wait for a while to ensure the server has started
//   await setTimeout(5000);

//   try {
//     // Perform the curl request
//     const req = await $`curl -X POST http://localhost:4000/graphql -H "Content-Type: application/json" -d '{"query": "{ hello }"}'`;

//     // Parse the response
//     const response = JSON.parse(req.stdout);

//     // Define the expected result
//     const expected = { "data": { "hello": "Hello world!" } };

//     // Assert that the response matches the expected output
//     assert.deepStrictEqual(response, expected);

//     console.log('Assertion passed, response is correct.');
//   } catch (err) {
//     console.error('Error during request or assertion:', err);
//   } finally {
//     // Terminate the server process
//     process.kill(-serverProcess.pid, 'SIGINT');
//     console.log('Server process has been terminated.');
//   }
// })();
