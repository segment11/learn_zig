fn deferInvalidExample() !void {
    defer {
        return error.DeferError;
    }

    return error.DeferError;
}