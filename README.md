# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Node.js security runtime

Use Node.js 22.23.4 or a later 22.x patch. The October 2026 security release
is pinned in `.node-version` and `.nvmrc`. Install development dependencies
before compiling assets: the Webpack and Sass build tools are required.

```sh
yarn install --frozen-lockfile
NODE_ENV=production yarn webpack --config config/webpack/production.js
```

The existing Webpacker revision is retained. Webpack/Babel and Vue 2 build
dependencies are updated for modern Node.js; Dart Sass replaces native Node
Sass. The legacy gzip cache is disabled because it uses MD4. Gzip output is
still generated. This runtime update does not migrate the legacy Rails/Vue
application to currently maintained framework major versions.
