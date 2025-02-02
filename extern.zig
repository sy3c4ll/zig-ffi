const std = @import("std");

extern fn hello() void;
extern fn pr_int(x: c_int) void;
extern fn answers() u16;
extern fn which_a(uppercase: bool) c_char;
extern fn sum(a: c_int, b: c_int) c_int;

export fn zig_hello() void {
    std.debug.print("hello called from Zig\n", .{});
    return hello();
}

export fn zig_pr_int(x: c_int) void {
    std.debug.print("pr_int called from Zig\n", .{});
    return pr_int(x);
}

export fn zig_answers() u16 {
    std.debug.print("answers called from Zig\n", .{});
    return answers();
}

export fn zig_which_a(uppercase: bool) c_char {
    std.debug.print("which_a called from Zig\n", .{});
    return which_a(uppercase);
}

export fn zig_sum(a: c_int, b: c_int) c_int {
    std.debug.print("sum called from Zig\n", .{});
    return sum(a, b);
}
