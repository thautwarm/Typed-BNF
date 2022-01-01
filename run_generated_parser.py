from runtests.python_simple_json.simple_json_parser import parser
from pprint import pprint
pprint(parser.parse(r"""{
    "x": {
            "a": [2],
            "z": [2, 3, 4],
            "s": [2, 5, {}, "\"asda\"da"]
        }
}"""))