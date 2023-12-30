# kiss-express

When installing new node modules:

```
npx dts2hx <module> --noLibWrap
# If this overwrites externs that were already in the externs folder, use this:
git checkout externs
```