# @kwsites/file-exists

Synchronous validation of a path existing either as a file or as a directory.

```
const { exists, FILE, FOLDER } = require('@kwsites/file-exists');

// when no type is specified, both folders and files are allowed
assert(exists(__dirname));
assert(exists(__filename));

// check for a folder existing
assert(exists(__dirname, FOLDER));
assert(!exists(__filename, FOLDER));

// check for a file existing
assert(!exists(__filename, FILE));
assert(exists(__filename, FILE));

// as the type is bit checked, supplying both matches both files and folders
assert(exists(__dirname, FILE + FOLDER));
assert(exists(__filename, FILE + FOLDER));
```

