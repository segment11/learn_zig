pub const StackTrace = struct {
    index: usize,
    instruction_addresses: [N]usize,
};