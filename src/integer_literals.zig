const std = @import("std");

pub fn main() void {
    const decimal_int = 98222;
    const hex_int = 0xff;
    const another_hex_int = 0xFF;
    const octal_int = 0o755;
    const binary_int = 0b11110000;

    // underscores may be placed between two digits as a visual separator
    const one_billion = 1_000_000_000;
    const binary_mask = 0b1_1111_1111;
    const permissions = 0o7_5_5;
    const big_address = 0xFF80_0000_0000_0000;

    std.debug.print("decimal_int: {}\n", .{decimal_int});
    std.debug.print("hex_int: {}\n", .{hex_int});
    std.debug.print("another_hex_int: {}\n", .{another_hex_int});
    std.debug.print("octal_int: {}\n", .{octal_int});
    std.debug.print("binary_int: {}\n", .{binary_int});
    std.debug.print("one_billion: {}\n", .{one_billion});
    std.debug.print("binary_mask: {}\n", .{binary_mask});
    std.debug.print("permissions: {}\n", .{permissions});
    std.debug.print("big_address: {}\n", .{big_address});
}
