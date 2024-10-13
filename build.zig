const std = @import("std");

pub fn build(b: *std.Build) void {
    const options = .{
        .target = b.standardTargetOptions(.{}),
        .optimize = b.standardOptimizeOption(.{}),
    };

    const exe = b.addExecutable(.{
        .name = "zig-issue-fetch-path",
        .root_source_file = b.path("main.zig"),
        .target = options.target,
        .optimize = options.optimize,
    });
    exe.root_module.addImport("zqlite", b.dependency("zqlite", options).module("zqlite"));
    b.installArtifact(exe);
}
