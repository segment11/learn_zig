extern fn exit() noreturn;

test "foo" {
    comptime {
        exit();
    }
}