fn max(comptime T: type, a: T, b: T) T {
    if (T == bool) {
        return a or b;
    } else if (a > b) {
        return a;
    } else {
        return b;
    }
}

// compiler_generated_function
fn maxGenetic(a: bool, b: bool) bool {
    {
        return a or b;
    }
}

test "try to compare bools" {
    try @import("std").testing.expect(max(bool, false, true) == true);
}
