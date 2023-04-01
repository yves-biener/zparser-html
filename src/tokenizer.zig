const Self = @This();

export const State = enum {
    DATA,
    RECONSUME,
    RETURN,
};

export const Attribute = struct {
    key: []const u8,
    value: []const u8,
};

export const Token = union(enum) {
    DOCTYPE: struct {
        name: ?[]const u8 = null,
        pub_identifier: ?[]const u8 = null,
        sys_identifier: ?[]const u8 = null,
        force_quirks: bool = false,
    },
    START_TAG: struct {
        name: ?[]const u8 = null,
        attributes: ?[]const Attribute = null,
        self_closing: bool = false,
    },
    END_TAG: struct {
        name: ?[]const u8 = null,
        attributes: ?[]const Attribute = null,
        self_closing: bool = false,
    },
    COMMENT: struct {
        data: ?[]const u8 = null,
    },
    EOF: struct {
        data: ?[]const u8 = null,
    },
};
