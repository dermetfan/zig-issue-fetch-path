# Zig Issue [#21690](https://github.com/ziglang/zig/issues/21690)

## How to Reproduce

    zig fetch --save https://github.com/karlseguin/zqlite.zig/archive/master.tar.gz

## Expectation vs Reality

Should change the dependency in `build.zig.zon` to:

```zig
.zqlite = .{ .url = "https://github.com/karlseguin/zqlite.zig/archive/master.tar.gz", .hash = "<something>" },
```

Instead it just updates the `path` field resulting in an invalid dependency:

```zig
.zqlite = .{ .path = "https://github.com/karlseguin/zqlite.zig/archive/master.tar.gz", },
```
