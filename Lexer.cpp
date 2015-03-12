enum class Token {
    tok_eof = -1,
    
    // commands
    tok_def = -2, tok_extern = -3,

    //primary
    tok_identifier = -4, tok_number = -5,
};

static string IdentifierStr;  // Filled in if tok_identifier
static double NumVal;         // Filled in if tok_number

/// gettok - Return the next token from standard input.
static int gettok() {
    static int LastChar = ' ';

    // Skip any whitespace.
    while (isspace(LastChar))
        LastChar = getchar();

    if (isalpha(LastChar)) {  // identifier: [a-zA-Z][a-zA-Z0-9]*
        IdentifierStr = LastChar;
        while (isalnum((LastChar = getchar())))
            IdentifierStr += LastChar;

        if (IdentifierStr == "def") return tok_def;
        if (IdentifierStr == "extern") return tok_extern;
        return tok_identifier;
    }
}

