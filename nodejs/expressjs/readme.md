## init with
```cmd
  yarn init
```

## after install expressjs
```cmd
  yarn add express
```

## adjust package.json to use import module
```JSON
  ...
  "type": "module",
  ...
```

## create a index.js using express
```javascript
  import express from 'express';

  const app = express();

  app.listen(3333,()=>{
    console.log('App runnig at http://localhost:3333');
  });
```

## create a script to start the project into package.json
```JSON
  ...
  "scripts": {
    "start": "node index.js"
  },
  ...
```
