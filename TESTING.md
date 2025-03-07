# Testing changes locally

When making a change to this repo, you can test your changes locally using this process.

This method can also be used to make customizations before installing NixOS fully.
eg changing from ext4 to ZFS

## Steps

1. Locate the `install` file for installation of choice eg `apps/x86_64-linux/install`
   or `apps/x86_64-linux/install-with-secrets`. Make sure your platform and choice
   of installation type (with secrets or without secrets) is made correctly.
2. In this file, make the following changes:

```
cleanup() {
  echo "Nothing to cleanup"
}

download_config() {
  cd templates/starter # or cd templates/starter-with-secrets depending on your choice
}
```

3. Make local changes in `templates/starter` or `templates/starter-with-secrets`.

4. Run through the same instructions as on the main README.md.
