const std = @import("std");

test "detect leak" {
    var list = std.array_list.Managed(u21).init(std.testing.allocator);
    // missing `defer list.deinit();`
    try list.append('☔');

    try std.testing.expect(list.items.len == 1);
}