from runtests.simple_json.simple_json_parser import parser

print(parser.parse(r"""{
    "x": {
            "a": [2],
            "z": [2, 3, 4],
            "s": [2, 5, {}, "\"asda\"da"]
        }
}"""))