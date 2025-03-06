const std = @import("std");

pub fn main() void {
    const floating_point = 123.0E+77;
    const another_float = 123.0;
    const yet_another = 123.0e+77;

    const hex_floating_point = 0x103.70p-5;
    const another_hex_float = 0x103.70;
    const yet_another_hex_float = 0x103.70P-5;

    // underscores may be placed between two digits as a visual separator
    const lightspeed = 299_792_458.000_000;
    const nanosecond = 0.000_000_001;
    const more_hex = 0x1234_5678.9ABC_CDEFp-10;

    const inf = std.math.inf(f32);
    const negative_inf = -std.math.inf(f64);
    const nan = std.math.nan(f128);

    std.debug.print("floating_point: {}\n", .{floating_point});
    std.debug.print("another_float: {}\n", .{another_float});
    std.debug.print("yet_another: {}\n", .{yet_another});
    std.debug.print("hex_floating_point: {}\n", .{hex_floating_point});
    std.debug.print("another_hex_float: {}\n", .{another_hex_float});
    std.debug.print("yet_another_hex_float: {}\n", .{yet_another_hex_float});
    std.debug.print("lightspeed: {}\n", .{lightspeed});
    std.debug.print("nanosecond: {}\n", .{nanosecond});
    std.debug.print("more_hex: {}\n", .{more_hex});
    std.debug.print("inf: {}\n", .{inf});
    std.debug.print("negative_inf: {}\n", .{negative_inf});
    std.debug.print("nan: {}\n", .{nan});
}
