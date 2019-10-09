exports.config = {
  tests: './*_test.js',
  output: './output',
  helpers: {
    Puppeteer: {
      url: 'http://localhost:3000',
      show: false
    }
  },
  include: {},
  bootstrap: null,
  mocha: {},
  name: 'code4000'
}
