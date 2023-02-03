tbnf ./runtests/simple_json.tbnf -o ./runtests/python_simple_json -lang "simple_json" -be python-lark
python run_generated_parser.py
