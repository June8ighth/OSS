# Getting Started

## References
 - [official getting-started guide](https://webpack.js.org/guides/getting-started/)

## Prerequisites
 - [node.js](https://nodejs.org/)
 
## Steps
 1. Creating a project
   ```
   $ mkdir webpack-demo 
   $ cd webpack-demo
   $ npm init -y
   $ npm install webpack webpack-cli --save-dev
   ```
 2. Creating the following directory structure
   ```
   $ mkdir src 
   $ mkdir dist
   $ ls
   dist			    package-lock.json	src
   node_modules		package.json
   ```
 3. Adding sample files and configuring 
  - src/index.js
    ```
    import _ from 'lodash';

    function component() {
      const element = document.createElement('div');

      element.innerHTML = _.join(['Hello', 'webpack'], ' ');

      return element;
    }

    document.body.appendChild(component());
    ```
  - dist/index.html
    ```
    <!doctype html>
    <html>
      <head>
        <title>Getting Started</title>
      </head>
      <body>
        <script src="main.js"></script>
      </body>
    </html>
    ```
  - package.json : make sure this package is marked as private, as well as removing the main entry
    ```
    {
        "name": "webpack-demo",
        "version": "1.0.0",
        "description": "",
    -    "main": "index.js",
    +    "priavate": true,
        "scripts": {
            "test": "echo \"Error: no test specified\" && exit 1"
        },
        "keywords": [],
        "author": "",
        "license": "ISC",
        "devDependencies": {
            "webpack": "^4.42.0",
            "webpack-cli": "^3.3.11"
        },
        "dependencies": {
            "lodash": "^4.17.15"
        }
    }
    ```
  - webpack.config.js
    ```
    const path = require('path');

    module.exports = {
      entry: './src/index.js',
      output: {
        filename: 'main.js',
        path: path.resolve(__dirname, 'dist'),
      },
    };
    ```
  - install 'lodash' to bundle the external library dependency
    ```
    $ npm install --save lodash
    ```
 4. Creating a bundle
  - src/index.js
    ```
    $ npx webpack --config webpack.config.js
    ```
 5. Checking the result
  - Open index.html in your browser and, if everything went right, you should see the following text: 'Hello webpack'.

## Additional Tips
 1. NPM scripts
  - Adding bunding command to the npm scripts
    ```
    {
        "name": "webpack-demo",
        "version": "1.0.0",
        "description": "",
        "priavate": true,
        "scripts": {
    -        "test": "echo \"Error: no test specified\" && exit 1"
    +        "test": "echo \"Error: no test specified\" && exit 1",
    +        "build": "webpack"
        },
        "keywords": [],
        "author": "",
        "license": "ISC",
        "devDependencies": {
            "webpack": "^4.42.0",
            "webpack-cli": "^3.3.11"
        },
        "dependencies": {
            "lodash": "^4.17.15"
        }
    }
    ```
  - Creating a bundle using npm
    ```
    $ npm run build
    ```