const Self = @This();

input_stream: []const u8 = undefined,
/// Insertion Point in the input_stream.
point: usize = undefined,

/// Errors which are defined to be identified during the parsing of the syntax of HTML.
/// For more details see (Parse errors)[https://html.spec.whatwg.org/multipage/parsing.html#parse-errors]
export const SyntaxError = error{
    AbructClosingOfEmptyComment,
    AbruptDocTypePublicIdentifier,
    AbruptDoctypeSystemIdentifier,
    AbsenceOfDigitsInNumericCharacterReference,
    CdataInHtmlContent,
    CharacterReferenceOutsideUnicodeRange,
    ControlCharacterInInputStream,
    ControlCharacterReference,
    EndTagWithAttributes,
    DuplicateAttribute,
    EndTagWithTrailingSolidus,
    EofBeforeTagName,
    EofInCdata,
    EofInComment,
    EofInDoctype,
    EofInScriptHtmlCommentLikeText,
    EofInTag,
    IncorrectlyClosedComment,
    IncorrectlyOpenedComment,
    InvalidCharacterSequenceAfterDoctypeName,
    InvalidFirstCharacterOfTagName,
    MissingAttributeValue,
    MissingDoctypeName,
    MissingDoctypePublicIdentifier,
    MissingDoctypeSystemIdentifier,
    MissingEndTagName,
    MissingQuoteBeforeDoctypePublicIdentifier,
    MissingQuoteBeforeDoctypeSystemIdentifier,
    MissingSemicolonAfterCharacterReference,
    MissingWhitespaceAfterDoctypePublicKeyword,
    MissingWhitespaceAfterDoctypeSystemKeyword,
    MissingWhitespaceBeforeDoctypeName,
    MissingWhitespaceBetweenAttributes,
    MissingWhitespaceBetweenDoctypePublicAndSystemIdentifiers,
    NestedComment,
    NoncharacterCharacterReference,
    NoncharacterInInputStream,
    NonVoidHtmlElementStartTagWithTrailingSolidus,
    NullCharacterReference,
    SurrogateCharacterReference,
    SurrogateInInputStream,
    UnexpectedCharacterAfterDoctypeSystemIdentifier,
    UnexpectedCharacterInAttributeName,
    UnexpectedCharacterInUnquotedAttributeValue,
    UnexpectedEqualsSignBeforeAttributeName,
    UnexpectedNullCharacter,
    UnexpectedQuestionMarkInsteadOfTagName,
    UnexpectedSolidusInTag,
    UnknownNamedCharacterReference,
};

export fn init(input_stream: []const u8) Self {
    return .{
        .input_stream = input_stream,
    };
}

/// Return the first character that has not yet been *consumed*.
/// Initially the first character of the input_stream is returned.
/// If there is no next character null is returned.
export fn next(self: *Self) ?u8 {
    _ = self;
    return null;
}

/// Return the last character to have been *consumed*.
/// If there has not been any character *consumed* yet null is returned.
export fn current(self: *Self) ?u8 {
    _ = self;
    return null;
}
