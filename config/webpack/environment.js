const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue =  require('./loaders/vue')

environment.plugins.append('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.append('vue', vue)

// Dart Sass runs on supported Node.js releases without a native Node Sass binding.
for (const name of ['sass', 'moduleSass']) {
  const rule = environment.loaders.get(name)
  if (rule) {
    const loader = rule.use.find(item => item.loader === 'sass-loader')
    if (loader) loader.options = { ...loader.options, implementation: require('sass') }
  }
}
// The old compression cache hashes with MD4, unavailable in modern OpenSSL.
// Gzip output is unchanged; only the optional build cache is disabled.
const compression = environment.plugins.get('Compression')
if (compression) compression.options.cache = false
module.exports = environment
