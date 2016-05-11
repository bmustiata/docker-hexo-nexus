= bmst/hexo-nexus

Runs hexo from inside a docker instance.

Before running `hexo` it will first run `npm install` using a globally
exported npm proxy.

The site must be mounted in `/site`.
