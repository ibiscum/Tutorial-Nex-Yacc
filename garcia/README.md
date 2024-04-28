# Tutorial-Nex-Yacc

<a href="https://albertogarci.github.io/blog/Simple-Lexer-and-Parser-in-GO/" target="_blank" >Here it's the post that follows the code</a>.

    go install github.com/blynn/nex@latest

    go install golang.org/x/tools/cmd/goyacc@latest

    $ nex parser.nex && goyacc parser.y && go build y.go parser.nn.go
