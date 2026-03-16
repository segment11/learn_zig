comptime {
    const array: [5]u8 = "hello".*;
    const garbage = array[5];
    _ = garbage;
}