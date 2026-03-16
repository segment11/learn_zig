test "foo" {
    comptime {
        var i = 0;
        while (i < 1001) : (i += 1) {}
    }
}