const std = @import("std");
const ffi = @cImport(@cInclude("from.h"));

export fn zig_hello() void {
    std.debug.print("hello called from Zig\n", .{});
    return ffi.hello();
}

export fn zig_pr_int(x: c_int) void {
    std.debug.print("pr_int called from Zig\n", .{});
    return ffi.pr_int(x);
}

export fn zig_answers() u16 {
    std.debug.print("answers called from Zig\n", .{});
    return ffi.answers();
}

export fn zig_which_a(uppercase: bool) u8 {
    std.debug.print("which_a called from Zig\n", .{});
    return ffi.which_a(uppercase);
}

export fn zig_sum(a: c_int, b: c_int) c_int {
    std.debug.print("sum called from Zig\n", .{});
    return ffi.sum(a, b);
}
