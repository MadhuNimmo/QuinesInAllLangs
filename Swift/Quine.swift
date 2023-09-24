public class Quine //adapted from http://wiki.c2.com/?QuineProgram
{
    public static func main()
    {
        let q = Character(UnicodeScalar(34))
        let l : [String] = [
        "public class Quine //adapted from http://wiki.c2.com/?QuineProgram",
        "{",
        "    public static func main()",
        "    {",
        "        let q = Character(UnicodeScalar(34))",
        "        let l : [String] = [",
        "        ",
        "        ]",
        "        for i in 0 ... 6",
        "        {    print(l[i]) }",
        "        for i in 0 ..< l.count",
        "        {    print(l[6], q, l[i], q, \",\") }",
        "        for i in 7 ..< l.count",
        "        {    print(l[i]) }",
        "    }",
        "}"
        ]
        for i in 0 ... 6
        {    print(l[i]) }
        for i in 0 ..< l.count
        {    print(l[6], q, l[i], q, ",") }
        for i in 7 ..< l.count
        {    print(l[i]) }
    }
}
