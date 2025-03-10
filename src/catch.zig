const parseU64 = @import("error_union_parsing_u64.zig").parseU64;

fn doAThing0(str: []u8) void {
    const number = parseU64(str, 10) catch 13;
    _ = number; // ...
}

fn doAThing1(str: []u8) !void {
    const number = parseU64(str, 10) catch |err| return err;
    _ = number; // ...
}

fn doAThing2(str: []u8) void {
    const number = parseU64(str, 10) catch blk: {
        // do things
        break :blk 13;
    };
    _ = number; // number is now initialized
}

fn doAThing3(str: []u8) !void {
    const number = try parseU64(str, 10);
    _ = number; // ...
}

fn doAThing4(str: []u8) void {
    if (parseU64(str, 10)) |number| {
        _ = number;
    } else |err| switch (err) {
        error.Overflow => {
            // handle overflow...
        },
        // we promise that InvalidChar won't happen (or crash in debug mode if it does)
        error.InvalidChar => unreachable,
    }
}

fn doAnotherThing(str: []u8) error{InvalidChar}!void {
    if (parseU64(str, 10)) |number| {
        _ = number;
    } else |err| switch (err) {
        error.Overflow => {
            // handle overflow...
        },
        else => |leftover_err| return leftover_err,
    }
}

fn doADifferentThing(str: []u8) void {
    if (parseU64(str, 10)) |number| {
        _ = number;
    } else |_| {
        // do as you'd like
    }
}