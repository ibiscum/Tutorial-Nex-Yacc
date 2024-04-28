# Example 03

Examples from https://berthub.eu/lex-yacc/

    $ nex -o example03.go -s example03.nex && go build example03.go

Input to scan:

    logging {
        category lame-servers { null; };
        category cname { null; };
    };

    zone "." {
        type hint;
        file "/etc/bind/db.root";
    };

Expected output:

    WORD OBRACE
    WORD FILENAME OBRACE WORD SEMICOLON EBRACE SEMICOLON
    WORD WORD OBRACE WORD SEMICOLON EBRACE SEMICOLON
    EBRACE SEMICOLON

    WORD QUOTE FILENAME QUOTE OBRACE
    WORD WORD SEMICOLON
    WORD QUOTE FILENAME QUOTE SEMICOLON
    EBRACE SEMICOLON
