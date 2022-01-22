const std = @import("std");
const builtin = @import("builtin");
const link = @import("../../link.zig");
const mem = std.mem;
const Liveness = @import("../../Liveness.zig");
const Air = @import("../../Air.zig");
const Allocator = mem.Allocator;
const Module = @import("../../Module.zig");
const DebugInfoOutput = @import("../../codegen.zig").DebugInfoOutput;
const GenerateSymbolError = @import("../../codegen.zig").GenerateSymbolError;
const FnResult = @import("../../codegen.zig").FnResult;
const ErrorMsg = Module.ErrorMsg;

pub fn generate(
    bin_file: *link.File,
    src_loc: Module.SrcLoc,
    module_fn: *Module.Fn,
    air: Air,
    liveness: Liveness,
    code: *std.ArrayList(u8),
    debug_output: DebugInfoOutput,
) GenerateSymbolError!FnResult {
    _ = bin_file;
    _ = src_loc;
    _ = module_fn;
    _ = air;
    _ = liveness;
    _ = code;
    _ = debug_output;

    try code.append(0xcc);  
    
    return FnResult{ .appended = {} };
}
