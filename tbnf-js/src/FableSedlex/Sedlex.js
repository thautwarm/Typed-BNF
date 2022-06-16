"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.Automata_add_node = Automata_add_node;
exports.Automata_add_nodes = Automata_add_nodes;
exports.Automata_alt = Automata_alt;
exports.Automata_char_pair_op = Automata_char_pair_op;
exports.Automata_chars = Automata_chars;
exports.Automata_compile = Automata_compile;
exports.Automata_compile_re = Automata_compile_re;
exports.Automata_compl = Automata_compl;
exports.Automata_cur_id = void 0;
exports.Automata_decision = Automata_decision;
exports.Automata_decision_table = Automata_decision_table;
exports.Automata_decision_tree = void 0;
exports.Automata_decision_tree$reflection = Automata_decision_tree$reflection;
exports.Automata_eps = Automata_eps;
exports.Automata_intersection = void 0;
exports.Automata_is_chars = Automata_is_chars;
exports.Automata_limit = void 0;
exports.Automata_new_node = Automata_new_node;
exports.Automata_node = void 0;
exports.Automata_node$reflection = Automata_node$reflection;
exports.Automata_old_decision_table = Automata_old_decision_table;
exports.Automata_pair_op = Automata_pair_op;
exports.Automata_plus = Automata_plus;
exports.Automata_rep = Automata_rep;
exports.Automata_repeat = Automata_repeat;
exports.Automata_segments_of_partition = Automata_segments_of_partition;
exports.Automata_seq = Automata_seq;
exports.Automata_simplify = Automata_simplify;
exports.Automata_simplify_decision_tree = Automata_simplify_decision_tree;
exports.Automata_subtract = void 0;
exports.Automata_transition = Automata_transition;
exports.Cset_any = void 0;
exports.Cset_complement = Cset_complement;
exports.Cset_difference = Cset_difference;
exports.Cset_empty = Cset_empty;
exports.Cset_eof = void 0;
exports.Cset_intersection = Cset_intersection;
exports.Cset_interval = Cset_interval;
exports.Cset_is_empty = Cset_is_empty;
exports.Cset_min_code = exports.Cset_max_code = void 0;
exports.Cset_singleton = Cset_singleton;
exports.Cset_union = Cset_union;
exports.Lexer_discard = void 0;
exports.Lexer_tokenize = Lexer_tokenize;
exports.Utf8_from_ustring = void 0;
exports.Utf8_lexeme = Utf8_lexeme;
exports.Utf8_lexeme_char = Utf8_lexeme_char;
exports.Utf8_sub_lexeme = Utf8_sub_lexeme;
exports.backtrack = backtrack;
exports.build = build;
exports.compiled_unit = exports.chunk_size = void 0;
exports.compiled_unit$reflection = compiled_unit$reflection;
exports.empty_lexbuf = void 0;
exports.from_ustring = from_ustring;
exports.incr = incr;
exports.inline_thread = inline_thread;
exports.keep_token = void 0;
exports.keep_token$reflection = keep_token$reflection;
exports.lang = void 0;
exports.lang$reflection = lang$reflection;
exports.lexbuf = void 0;
exports.lexbuf$reflection = lexbuf$reflection;
exports.lexeme = lexeme;
exports.lexeme_char = lexeme_char;
exports.lexeme_end = lexeme_end;
exports.lexeme_start = lexeme_start;
exports.lexing_positions = lexing_positions;
exports.mark = mark;
exports.new_line = new_line;
exports.pany = void 0;
exports.pchar = pchar;
exports.pchars = pchars;
exports.pcompl = pcompl;
exports.peof = void 0;
exports.pintersct = pintersct;
exports.pinterval = pinterval;
exports.popt = popt;
exports.por = por;
exports.position = void 0;
exports.position$reflection = position$reflection;
exports.pplus = pplus;
exports.prep = prep;
exports.pseq = pseq;
exports.pstar = pstar;
exports.pstring = pstring;
exports.psub = psub;
exports.public_next_int = public_next_int;
exports.regexp_for_char = regexp_for_char;
exports.regexp_for_string = regexp_for_string;
exports.start = start;
exports.with_tokenizer = with_tokenizer;

var _List = require("../fable_modules/fable-library.3.7.14/List.js");

var _Util = require("../fable_modules/fable-library.3.7.14/Util.js");

var _Types = require("../fable_modules/fable-library.3.7.14/Types.js");

var _Reflection = require("../fable_modules/fable-library.3.7.14/Reflection.js");

var _Array = require("../fable_modules/fable-library.3.7.14/Array.js");

var _Map = require("../fable_modules/fable-library.3.7.14/Map.js");

var _Option = require("../fable_modules/fable-library.3.7.14/Option.js");

var _Set = require("../fable_modules/fable-library.3.7.14/Set.js");

function incr(a) {
  a.contents = a.contents + 1 | 0;
}

function Cset_union(c1_mut, c2_mut) {
  Cset_union: while (true) {
    const c1 = c1_mut,
          c2 = c2_mut;
    const matchValue = [c1, c2];

    if (!(0, _List.isEmpty)(matchValue[0])) {
      if (!(0, _List.isEmpty)(matchValue[1])) {
        if ((0, _List.head)(matchValue[0])[0] <= (0, _List.head)(matchValue[1])[0]) {
          if ((0, _List.head)(matchValue[0])[1] + 1 < (0, _List.head)(matchValue[1])[0]) {
            return (0, _List.cons)((0, _List.head)(matchValue[0]), Cset_union((0, _List.tail)(matchValue[0]), c2));
          } else if ((0, _List.head)(matchValue[0])[1] < (0, _List.head)(matchValue[1])[1]) {
            c1_mut = (0, _List.tail)(matchValue[0]);
            c2_mut = (0, _List.cons)([(0, _List.head)(matchValue[0])[0], (0, _List.head)(matchValue[1])[1]], (0, _List.tail)(matchValue[1]));
            continue Cset_union;
          } else {
            c1_mut = c1;
            c2_mut = (0, _List.tail)(matchValue[1]);
            continue Cset_union;
          }
        } else {
          c1_mut = c2;
          c2_mut = c1;
          continue Cset_union;
        }
      } else {
        return c1;
      }
    } else {
      return c2;
    }

    break;
  }
}

const Cset_max_code = 1114111;
exports.Cset_max_code = Cset_max_code;
const Cset_min_code = -1;
exports.Cset_min_code = Cset_min_code;

function Cset_empty() {
  return (0, _List.empty)();
}

function Cset_singleton(i) {
  return (0, _List.singleton)([i, i]);
}

function Cset_is_empty(_arg1) {
  if ((0, _List.isEmpty)(_arg1)) {
    return true;
  } else {
    return false;
  }
}

function Cset_interval(i, j) {
  if ((0, _Util.compare)(i, j) <= 0) {
    return (0, _List.singleton)([i, j]);
  } else {
    return (0, _List.singleton)([j, i]);
  }
}

const Cset_eof = Cset_singleton(-1);
exports.Cset_eof = Cset_eof;
const Cset_any = Cset_interval(0, Cset_max_code);
exports.Cset_any = Cset_any;

function Cset_complement(c) {
  const aux = (start_1, _arg1) => {
    if (!(0, _List.isEmpty)(_arg1)) {
      return (0, _List.cons)([start_1, (0, _List.head)(_arg1)[0] - 1], aux((0, _List.head)(_arg1)[1] + 1, (0, _List.tail)(_arg1)));
    } else if (start_1 <= Cset_max_code) {
      return (0, _List.singleton)([start_1, Cset_max_code]);
    } else {
      return (0, _List.empty)();
    }
  };

  let pattern_matching_result, j_1, l_1, l_2;

  if (!(0, _List.isEmpty)(c)) {
    if ((0, _List.head)(c)[0] === -1) {
      pattern_matching_result = 0;
      j_1 = (0, _List.head)(c)[1];
      l_1 = (0, _List.tail)(c);
    } else {
      pattern_matching_result = 1;
      l_2 = c;
    }
  } else {
    pattern_matching_result = 1;
    l_2 = c;
  }

  switch (pattern_matching_result) {
    case 0:
      {
        return aux(j_1 + 1, l_1);
      }

    case 1:
      {
        return aux(-1, l_2);
      }
  }
}

function Cset_intersection(c1, c2) {
  return Cset_complement(Cset_union(Cset_complement(c1), Cset_complement(c2)));
}

function Cset_difference(c1, c2) {
  return Cset_complement(Cset_union(Cset_complement(c1), c2));
}

class Automata_node extends _Types.Record {
  constructor(id, eps, trans) {
    super();
    this.id = id | 0;
    this.eps = eps;
    this.trans = trans;
  }

}

exports.Automata_node = Automata_node;

function Automata_node$reflection() {
  return (0, _Reflection.record_type)("Fable.Sedlex.Compiler.Automata.node", [], Automata_node, () => [["id", _Reflection.int32_type], ["eps", (0, _Reflection.list_type)(Automata_node$reflection())], ["trans", (0, _Reflection.list_type)((0, _Reflection.tuple_type)((0, _Reflection.list_type)((0, _Reflection.tuple_type)(_Reflection.int32_type, _Reflection.int32_type)), Automata_node$reflection()))]]);
}

const Automata_cur_id = new _Types.FSharpRef(0);
exports.Automata_cur_id = Automata_cur_id;

function Automata_new_node() {
  incr(Automata_cur_id);
  return new Automata_node(Automata_cur_id.contents, (0, _List.empty)(), (0, _List.empty)());
}

function Automata_seq(r1, r2, succ) {
  return r1(r2(succ));
}

function Automata_is_chars(final, _arg1) {
  let f, c;
  let pattern_matching_result, c_1, f_1;

  if ((0, _List.isEmpty)(_arg1.eps)) {
    if (!(0, _List.isEmpty)(_arg1.trans)) {
      if ((0, _List.isEmpty)((0, _List.tail)(_arg1.trans))) {
        if (f = (0, _List.head)(_arg1.trans)[1], (c = (0, _List.head)(_arg1.trans)[0], f === final)) {
          pattern_matching_result = 0;
          c_1 = (0, _List.head)(_arg1.trans)[0];
          f_1 = (0, _List.head)(_arg1.trans)[1];
        } else {
          pattern_matching_result = 1;
        }
      } else {
        pattern_matching_result = 1;
      }
    } else {
      pattern_matching_result = 1;
    }
  } else {
    pattern_matching_result = 1;
  }

  switch (pattern_matching_result) {
    case 0:
      {
        return c_1;
      }

    case 1:
      {
        return void 0;
      }
  }
}

function Automata_chars(c, succ) {
  const n = Automata_new_node();
  n.trans = (0, _List.singleton)([c, succ]);
  return n;
}

function Automata_alt(r1, r2, succ) {
  const nr1 = r1(succ);
  const nr2 = r2(succ);
  const matchValue = [Automata_is_chars(succ, nr1), Automata_is_chars(succ, nr2)];
  let pattern_matching_result, c1, c2;

  if (matchValue[0] != null) {
    if (matchValue[1] != null) {
      pattern_matching_result = 0;
      c1 = matchValue[0];
      c2 = matchValue[1];
    } else {
      pattern_matching_result = 1;
    }
  } else {
    pattern_matching_result = 1;
  }

  switch (pattern_matching_result) {
    case 0:
      {
        return Automata_chars(Cset_union(c1, c2), succ);
      }

    case 1:
      {
        const n = Automata_new_node();
        n.eps = (0, _List.ofArray)([nr1, nr2]);
        return n;
      }
  }
}

function Automata_rep(r, succ) {
  const n = Automata_new_node();
  n.eps = (0, _List.ofArray)([r(n), succ]);
  return n;
}

function Automata_plus(r, succ) {
  const n = Automata_new_node();
  const nr = r(n);
  n.eps = (0, _List.ofArray)([nr, succ]);
  return nr;
}

function Automata_eps(succ) {
  return succ;
}

function Automata_compl(r) {
  let c_1;
  const n = Automata_new_node();
  const matchValue = Automata_is_chars(n, r(n));

  if (matchValue != null) {
    return c_1 = Cset_difference(Cset_any, matchValue), succ => Automata_chars(c_1, succ);
  } else {
    return void 0;
  }
}

function Automata_pair_op(f, r0, r1) {
  let c;
  const n = Automata_new_node();

  const to_chars = r => Automata_is_chars(n, r(n));

  const matchValue = [to_chars(r0), to_chars(r1)];
  let pattern_matching_result, c0, c1;

  if (matchValue[0] != null) {
    if (matchValue[1] != null) {
      pattern_matching_result = 0;
      c0 = matchValue[0];
      c1 = matchValue[1];
    } else {
      pattern_matching_result = 1;
    }
  } else {
    pattern_matching_result = 1;
  }

  switch (pattern_matching_result) {
    case 0:
      {
        return c = f(c0, c1), succ => Automata_chars(c, succ);
      }

    case 1:
      {
        return void 0;
      }
  }
}

const Automata_subtract = r0 => r1 => Automata_pair_op(Cset_difference, r0, r1);

exports.Automata_subtract = Automata_subtract;

const Automata_intersection = r0 => r1 => Automata_pair_op(Cset_intersection, r0, r1);

exports.Automata_intersection = Automata_intersection;

function Automata_compile_re(re) {
  const final = Automata_new_node();
  return [re(final), final];
}

function Automata_add_node(state, node) {
  if ((0, _List.exists)(b => node === b, state)) {
    return state;
  } else {
    return Automata_add_nodes((0, _List.cons)(node, state), node.eps);
  }
}

function Automata_add_nodes(state, nodes) {
  return (0, _List.fold)(Automata_add_node, state, nodes);
}

function Automata_transition(state) {
  const norm = _arg1_mut => {
    norm: while (true) {
      const _arg1 = _arg1_mut;
      let pattern_matching_result, c1, c2, l, n1, n2, q, l_1;

      if (!(0, _List.isEmpty)(_arg1)) {
        if (!(0, _List.isEmpty)((0, _List.tail)(_arg1))) {
          pattern_matching_result = 0;
          c1 = (0, _List.head)(_arg1)[0];
          c2 = (0, _List.head)((0, _List.tail)(_arg1))[0];
          l = (0, _List.tail)(_arg1);
          n1 = (0, _List.head)(_arg1)[1];
          n2 = (0, _List.head)((0, _List.tail)(_arg1))[1];
          q = (0, _List.tail)((0, _List.tail)(_arg1));
        } else {
          pattern_matching_result = 1;
          l_1 = _arg1;
        }
      } else {
        pattern_matching_result = 1;
        l_1 = _arg1;
      }

      switch (pattern_matching_result) {
        case 0:
          {
            if (n1 === n2) {
              _arg1_mut = (0, _List.cons)([Cset_union(c1, c2), n1], q);
              continue norm;
            } else {
              return (0, _List.cons)([c1, n1], norm(l));
            }
          }

        case 1:
          {
            return l_1;
          }
      }

      break;
    }
  };

  const t_1 = norm((0, _List.sortWith)((tupledArg, tupledArg_1) => tupledArg[1].id - tupledArg_1[1].id, (0, _List.concat)((0, _List.map)(n => n.trans, state))));
  const t_6 = (0, _List.toArray)((0, _List.map)(tupledArg_7 => [tupledArg_7[0], Automata_add_nodes((0, _List.empty)(), tupledArg_7[1])], (0, _List.fold)((0, _Util.uncurry)(2, tupledArg_2 => {
    const all = tupledArg_2[0];
    const t_2 = tupledArg_2[1];
    return tupledArg_3 => {
      const c0 = tupledArg_3[0];
      const n0 = tupledArg_3[1];
      const t_3 = (0, _List.append)((0, _List.cons)([Cset_difference(c0, all), (0, _List.singleton)(n0)], (0, _List.map)(tupledArg_4 => [Cset_intersection(tupledArg_4[0], c0), (0, _List.cons)(n0, tupledArg_4[1])], t_2)), (0, _List.map)(tupledArg_5 => [Cset_difference(tupledArg_5[0], c0), tupledArg_5[1]], t_2));
      return [Cset_union(all, c0), (0, _List.filter)(tupledArg_6 => !Cset_is_empty(tupledArg_6[0]), t_3)];
    };
  }), [Cset_empty(), (0, _List.empty)()], t_1)[1]));
  t_6.sort((tupledArg_8, tupledArg_9) => (0, _Util.compare)(tupledArg_8[0], tupledArg_9[0]));
  return t_6;
}

function Automata_compile(rs) {
  const rs_1 = (0, _Array.map)(Automata_compile_re, rs);
  const counter = new _Types.FSharpRef(0);
  let states = (0, _Map.empty)();
  let states_def = (0, _Map.empty)();

  const aux = state => {
    const matchValue = (0, _Map.tryFind)(state, states);

    if (matchValue == null) {
      const i = counter.contents | 0;
      incr(counter);
      states = (0, _Map.add)(state, i, states);
      const trans_1 = (0, _Array.map)(tupledArg => [tupledArg[0], aux(tupledArg[1])], Automata_transition(state));
      const finals = (0, _Array.map)(tupledArg_1 => (0, _List.exists)(b => tupledArg_1[1] === b, state), rs_1);
      states_def = (0, _Map.add)(i, [trans_1, finals], states_def);
      return i | 0;
    } else {
      return matchValue | 0;
    }
  };

  const init = new _Types.FSharpRef((0, _List.empty)());
  rs_1.forEach(tupledArg_2 => {
    init.contents = Automata_add_node(init.contents, tupledArg_2[0]);
  });
  const i_2 = aux(init.contents) | 0;
  return (0, _Array.initialize)(counter.contents, x => (0, _Map.find)(x, states_def));
}

class Automata_decision_tree extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["Lte", "Table", "Return"];
  }

}

exports.Automata_decision_tree = Automata_decision_tree;

function Automata_decision_tree$reflection() {
  return (0, _Reflection.union_type)("Fable.Sedlex.Compiler.Automata.decision_tree", [], Automata_decision_tree, () => [[["Item1", _Reflection.int32_type], ["Item2", Automata_decision_tree$reflection()], ["Item3", Automata_decision_tree$reflection()]], [["Item1", _Reflection.int32_type], ["Item2", (0, _Reflection.array_type)(_Reflection.int32_type)]], [["Item", _Reflection.int32_type]]]);
}

function Automata_simplify_decision_tree(x) {
  let pattern_matching_result, a_1, b_1, l_1;

  if (x.tag === 2) {
    pattern_matching_result = 0;
  } else if (x.tag === 0) {
    if (x.fields[1].tag === 2) {
      if (x.fields[2].tag === 2) {
        if (x.fields[1].fields[0] === x.fields[2].fields[0]) {
          pattern_matching_result = 1;
          a_1 = x.fields[1].fields[0];
          b_1 = x.fields[2].fields[0];
          l_1 = x.fields[1];
        } else {
          pattern_matching_result = 2;
        }
      } else {
        pattern_matching_result = 2;
      }
    } else {
      pattern_matching_result = 2;
    }
  } else {
    pattern_matching_result = 0;
  }

  switch (pattern_matching_result) {
    case 0:
      {
        return x;
      }

    case 1:
      {
        return l_1;
      }

    case 2:
      {
        if (x.tag === 0) {
          const l_3 = Automata_simplify_decision_tree(x.fields[1]);
          const r_1 = Automata_simplify_decision_tree(x.fields[2]);
          const matchValue = [l_3, r_1];
          let pattern_matching_result_1;

          if (matchValue[0].tag === 2) {
            if (matchValue[1].tag === 2) {
              if (matchValue[0].fields[0] === matchValue[1].fields[0]) {
                pattern_matching_result_1 = 0;
              } else {
                pattern_matching_result_1 = 1;
              }
            } else {
              pattern_matching_result_1 = 1;
            }
          } else {
            pattern_matching_result_1 = 1;
          }

          switch (pattern_matching_result_1) {
            case 0:
              {
                return l_3;
              }

            case 1:
              {
                return new Automata_decision_tree(0, x.fields[0], l_3, r_1);
              }
          }
        } else {
          throw new Error("Match failure");
        }
      }
  }
}

function Automata_decision(l) {
  const merge2 = _arg1 => {
    let pattern_matching_result, a1, a2, b1, b2, d1, d2, rest, rest_1;

    if (!(0, _List.isEmpty)(_arg1)) {
      if (!(0, _List.isEmpty)((0, _List.tail)(_arg1))) {
        pattern_matching_result = 0;
        a1 = (0, _List.head)(_arg1)[0];
        a2 = (0, _List.head)((0, _List.tail)(_arg1))[0];
        b1 = (0, _List.head)(_arg1)[1];
        b2 = (0, _List.head)((0, _List.tail)(_arg1))[1];
        d1 = (0, _List.head)(_arg1)[2];
        d2 = (0, _List.head)((0, _List.tail)(_arg1))[2];
        rest = (0, _List.tail)((0, _List.tail)(_arg1));
      } else {
        pattern_matching_result = 1;
        rest_1 = _arg1;
      }
    } else {
      pattern_matching_result = 1;
      rest_1 = _arg1;
    }

    switch (pattern_matching_result) {
      case 0:
        {
          return (0, _List.cons)([a1, b2, new Automata_decision_tree(0, b1, d1, b1 + 1 === a2 ? d2 : new Automata_decision_tree(0, a2 - 1, new Automata_decision_tree(2, -1), d2))], merge2(rest));
        }

      case 1:
        {
          return rest_1;
        }
    }
  };

  const aux = _arg2_mut => {
    aux: while (true) {
      const _arg2 = _arg2_mut;

      if ((0, _List.isEmpty)(_arg2)) {
        return new Automata_decision_tree(2, -1);
      } else if ((0, _List.isEmpty)((0, _List.tail)(_arg2))) {
        return new Automata_decision_tree(0, (0, _List.head)(_arg2)[0] - 1, new Automata_decision_tree(2, -1), new Automata_decision_tree(0, (0, _List.head)(_arg2)[1], (0, _List.head)(_arg2)[2], new Automata_decision_tree(2, -1)));
      } else {
        _arg2_mut = merge2(_arg2);
        continue aux;
      }

      break;
    }
  };

  return aux((0, _List.map)(tupledArg => [tupledArg[0], tupledArg[1], new Automata_decision_tree(2, tupledArg[2])], l));
}

const Automata_limit = 8192;
exports.Automata_limit = Automata_limit;

function Automata_old_decision_table(l) {
  const aux = (m_mut, accu_mut, _arg1_mut) => {
    aux: while (true) {
      const m = m_mut,
            accu = accu_mut,
            _arg1 = _arg1_mut;
      let pattern_matching_result, a_1, b_1, i_1, rem_1, x_1;

      if (!(0, _List.isEmpty)(_arg1)) {
        if ((0, _List.head)(_arg1)[1] < Automata_limit && (0, _List.head)(_arg1)[2] < 255) {
          pattern_matching_result = 0;
          a_1 = (0, _List.head)(_arg1)[0];
          b_1 = (0, _List.head)(_arg1)[1];
          i_1 = (0, _List.head)(_arg1)[2];
          rem_1 = (0, _List.tail)(_arg1);
          x_1 = (0, _List.head)(_arg1);
        } else {
          pattern_matching_result = 1;
        }
      } else {
        pattern_matching_result = 1;
      }

      switch (pattern_matching_result) {
        case 0:
          {
            m_mut = (0, _Util.min)(_Util.compare, a_1, m);
            accu_mut = (0, _List.cons)(x_1, accu);
            _arg1_mut = rem_1;
            continue aux;
          }

        case 1:
          {
            return [m, accu, _arg1];
          }
      }

      break;
    }
  };

  const patternInput = aux(2147483647, (0, _List.empty)(), l);
  const table = patternInput[1];
  const rest = patternInput[2];
  const min = patternInput[0] | 0;

  if (!(0, _List.isEmpty)(table)) {
    if ((0, _List.isEmpty)((0, _List.tail)(table))) {
      return new Automata_decision_tree(0, (0, _List.head)(table)[0] - 1, new Automata_decision_tree(2, -1), new Automata_decision_tree(0, (0, _List.head)(table)[1], new Automata_decision_tree(2, (0, _List.head)(table)[2]), Automata_decision(rest)));
    } else {
      const arr = (0, _Array.fill)(new Array((0, _List.head)(table)[1] - min + 1), 0, (0, _List.head)(table)[1] - min + 1, 0);
      (0, _List.iterate)(tupledArg => {
        for (let j = tupledArg[0]; j <= tupledArg[1]; j++) {
          arr[j - min] = tupledArg[2] + 1 | 0;
        }
      }, table);
      return new Automata_decision_tree(0, min - 1, new Automata_decision_tree(2, -1), new Automata_decision_tree(0, (0, _List.head)(table)[1], new Automata_decision_tree(1, min, arr), Automata_decision(rest)));
    }
  } else {
    return Automata_decision(l);
  }
}

function Automata_simplify(min_mut, max_mut, _arg1_mut) {
  Automata_simplify: while (true) {
    const min = min_mut,
          max = max_mut,
          _arg1 = _arg1_mut;

    if (_arg1.tag === 0) {
      const yes = _arg1.fields[1];
      const no = _arg1.fields[2];
      const i = _arg1.fields[0] | 0;

      if (i >= max) {
        min_mut = min;
        max_mut = max;
        _arg1_mut = yes;
        continue Automata_simplify;
      } else if (i < min) {
        min_mut = min;
        max_mut = max;
        _arg1_mut = no;
        continue Automata_simplify;
      } else {
        return new Automata_decision_tree(0, i, Automata_simplify(min, i, yes), Automata_simplify(i + 1, max, no));
      }
    } else {
      return _arg1;
    }

    break;
  }
}

function Automata_segments_of_partition(p) {
  const seg = new _Types.FSharpRef((0, _List.empty)());
  (0, _Array.iterateIndexed)((i, c) => {
    (0, _List.iterate)(tupledArg => {
      seg.contents = (0, _List.cons)([tupledArg[0], tupledArg[1], i], seg.contents);
    }, c);
  }, p);
  return (0, _List.sortWith)((tupledArg_1, tupledArg_2) => (0, _Util.compare)(tupledArg_1[0], tupledArg_2[0]), seg.contents);
}

function Automata_decision_table(p) {
  return Automata_simplify(-1, Cset_max_code, Automata_old_decision_table(Automata_segments_of_partition(p)));
}

function Automata_char_pair_op(func, name, p0, p1) {
  const matchValue = func(p0, p1);

  if (matchValue == null) {
    throw new Error(`the ${name} operator can only applied to single-character length regexps`);
  } else {
    return (0, _Option.value)(matchValue);
  }
}

function Automata_repeat(r, _arg1_0, _arg1_1) {
  const _arg1 = [_arg1_0, _arg1_1];

  if (_arg1[0] === 0) {
    if (_arg1[1] === 0) {
      return Automata_eps;
    } else {
      let r2_1;
      const r2 = Automata_repeat(r, 0, _arg1[1] - 1);

      r2_1 = succ_2 => Automata_seq(r, r2, succ_2);

      return succ_3 => Automata_alt(Automata_eps, r2_1, succ_3);
    }
  } else {
    const r2_2 = Automata_repeat(r, _arg1[0] - 1, _arg1[1] - 1);
    return succ_4 => Automata_seq(r, r2_2, succ_4);
  }
}

class keep_token extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["Discard", "Tokenize"];
  }

}

exports.keep_token = keep_token;

function keep_token$reflection() {
  return (0, _Reflection.union_type)("Fable.Sedlex.Compiler.keep_token", [], keep_token, () => [[], [["Item", _Reflection.int32_type]]]);
}

class lang extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["Lang_match_i", "Lang_backtrace", "Lang_mark", "Lang_callst", "Lang_int"];
  }

}

exports.lang = lang;

function lang$reflection() {
  return (0, _Reflection.union_type)("Fable.Sedlex.Compiler.lang", [], lang, () => [[["Item1", Automata_decision_tree$reflection()], ["Item2", (0, _Reflection.array_type)(lang$reflection())], ["Item3", lang$reflection()]], [], [["Item1", _Reflection.int32_type], ["Item2", lang$reflection()]], [["Item", _Reflection.int32_type]], [["Item", _Reflection.int32_type]]]);
}

class compiled_unit extends _Types.Record {
  constructor(states, lex_code, referenced_decision_trees) {
    super();
    this.states = states;
    this.lex_code = lex_code;
    this.referenced_decision_trees = referenced_decision_trees;
  }

}

exports.compiled_unit = compiled_unit;

function compiled_unit$reflection() {
  return (0, _Reflection.record_type)("Fable.Sedlex.Compiler.compiled_unit", [], compiled_unit, () => [["states", (0, _Reflection.class_type)("Microsoft.FSharp.Collections.FSharpMap`2", [_Reflection.int32_type, lang$reflection()])], ["lex_code", (0, _Reflection.tuple_type)((0, _Reflection.array_type)(keep_token$reflection()), _Reflection.string_type)], ["referenced_decision_trees", (0, _Reflection.class_type)("Microsoft.FSharp.Collections.FSharpSet`1", [Automata_decision_tree$reflection()])]]);
}

function build(definition, error_msg) {
  let partitions = (0, _Map.empty)();
  const partition_counter = new _Types.FSharpRef(0);
  let partition_trees = (0, _Map.empty)();
  let referenced_decision_trees = (0, _Set.empty)({
    Compare: _Util.compare
  });

  const best_final = final => {
    const fin = new _Types.FSharpRef(void 0);

    for (let i = final.length - 1; i >= 0; i--) {
      if (final[i]) {
        fin.contents = i;
      }
    }

    return fin.contents;
  };

  const gen_definition = l => error => {
    const brs = l;
    const auto = Automata_compile((0, _Array.map)(tuple => tuple[0], brs));
    const cases = (0, _Array.map)(tupledArg => tupledArg[1], brs);
    return new compiled_unit((0, _Map.ofArray)((0, _Array.choose)(x_2 => x_2, (0, _Array.mapIndexed)((0, _Util.uncurry)(2, gen_state(auto)), auto))), [cases, error], referenced_decision_trees);
  };

  const call_state = auto_1 => state => {
    const patternInput = auto_1[state];

    if (patternInput[0].length === 0) {
      const matchValue_2 = best_final(patternInput[1]);

      if (matchValue_2 == null) {
        throw new Error("cannot found best final");
      } else {
        return new lang(4, matchValue_2);
      }
    } else {
      return new lang(3, state);
    }
  };

  const gen_state = auto_2 => i_2 => tupledArg_1 => {
    const trans_1 = tupledArg_1[0];
    const v_partition = (0, _Array.map)(tuple_1 => tuple_1[0], trans_1);
    const cases_1 = (0, _Array.map)(tupledArg_2 => call_state(auto_2)(tupledArg_2[1]), trans_1);

    const body = () => {
      let p, matchValue, tree;
      return new lang(0, (p = v_partition, (matchValue = (0, _Map.tryFind)(p, partition_trees), matchValue != null ? matchValue : (tree = Automata_simplify_decision_tree(Automata_decision_table(p)), (referenced_decision_trees = (0, _Set.add)(tree, referenced_decision_trees), (partition_trees = (0, _Map.add)(p, tree, partition_trees), tree))))), cases_1, new lang(1));
    };

    const matchValue_3 = best_final(tupledArg_1[1]);

    if (matchValue_3 != null) {
      if (trans_1.length === 0) {
        return void 0;
      } else if (matchValue_3 != null) {
        return [i_2, new lang(2, matchValue_3, body())];
      } else {
        throw new Error("Match failure");
      }
    } else {
      return [i_2, body()];
    }
  };

  return gen_definition(definition)(error_msg);
}

class lexbuf extends _Types.Record {
  constructor(refill, buf, src, len, offset, pos, curr_bol, curr_line, start_pos, start_bol, start_line, marked_pos, marked_bol, marked_line, marked_val, filename, finished) {
    super();
    this.refill = refill;
    this.buf = buf;
    this.src = src;
    this.len = len | 0;
    this.offset = offset | 0;
    this.pos = pos | 0;
    this.curr_bol = curr_bol | 0;
    this.curr_line = curr_line | 0;
    this.start_pos = start_pos | 0;
    this.start_bol = start_bol | 0;
    this.start_line = start_line | 0;
    this.marked_pos = marked_pos | 0;
    this.marked_bol = marked_bol | 0;
    this.marked_line = marked_line | 0;
    this.marked_val = marked_val | 0;
    this.filename = filename;
    this.finished = finished;
  }

}

exports.lexbuf = lexbuf;

function lexbuf$reflection() {
  return (0, _Reflection.record_type)("Fable.Sedlex.Compiler.lexbuf", [], lexbuf, () => [["refill", (0, _Reflection.lambda_type)(_Reflection.string_type, (0, _Reflection.lambda_type)(_Reflection.int32_type, (0, _Reflection.lambda_type)(_Reflection.int32_type, _Reflection.int32_type)))], ["buf", (0, _Reflection.array_type)(_Reflection.int32_type)], ["src", _Reflection.string_type], ["len", _Reflection.int32_type], ["offset", _Reflection.int32_type], ["pos", _Reflection.int32_type], ["curr_bol", _Reflection.int32_type], ["curr_line", _Reflection.int32_type], ["start_pos", _Reflection.int32_type], ["start_bol", _Reflection.int32_type], ["start_line", _Reflection.int32_type], ["marked_pos", _Reflection.int32_type], ["marked_bol", _Reflection.int32_type], ["marked_line", _Reflection.int32_type], ["marked_val", _Reflection.int32_type], ["filename", _Reflection.string_type], ["finished", _Reflection.bool_type]]);
}

const empty_lexbuf = new lexbuf((_arg3, _arg2, _arg1) => {
  throw new Error("invalid");
}, [], "", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "", false);
exports.empty_lexbuf = empty_lexbuf;

function from_ustring(a) {
  const len = a.length | 0;
  const buf = [];
  const enumerator = (0, _Util.getEnumerator)(a.split(""));

  try {
    while (enumerator["System.Collections.IEnumerator.MoveNext"]()) {
      const c = enumerator["System.Collections.Generic.IEnumerator`1.get_Current"]();
      void buf.push(c.charCodeAt(0));
    }
  } finally {
    (0, _Util.disposeSafe)(enumerator);
  }

  return new lexbuf(empty_lexbuf.refill, buf, a, len, empty_lexbuf.offset, empty_lexbuf.pos, empty_lexbuf.curr_bol, empty_lexbuf.curr_line, empty_lexbuf.start_pos, empty_lexbuf.start_bol, empty_lexbuf.start_line, empty_lexbuf.marked_pos, empty_lexbuf.marked_bol, empty_lexbuf.marked_line, empty_lexbuf.marked_val, empty_lexbuf.filename, true);
}

const chunk_size = 512;
exports.chunk_size = chunk_size;

function new_line(lexbuf_1) {
  lexbuf_1.curr_line = lexbuf_1.curr_line + 1 | 0;
  lexbuf_1.curr_bol = lexbuf_1.pos + lexbuf_1.offset | 0;
}

function public_next_int(lexbuf_1) {
  if (lexbuf_1.pos === lexbuf_1.len && lexbuf_1.finished) {
    return -1;
  } else {
    const ret = lexbuf_1.buf[lexbuf_1.pos] | 0;
    lexbuf_1.pos = lexbuf_1.pos + 1 | 0;

    if (ret === 10) {
      new_line(lexbuf_1);
    }

    return ret | 0;
  }
}

function mark(lexbuf_1, i) {
  lexbuf_1.marked_pos = lexbuf_1.pos | 0;
  lexbuf_1.marked_bol = lexbuf_1.curr_bol | 0;
  lexbuf_1.marked_line = lexbuf_1.curr_line | 0;
  lexbuf_1.marked_val = i | 0;
}

function start(lexbuf_1) {
  lexbuf_1.start_pos = lexbuf_1.pos | 0;
  lexbuf_1.start_bol = lexbuf_1.curr_bol | 0;
  lexbuf_1.start_line = lexbuf_1.curr_line | 0;
  mark(lexbuf_1, -1);
}

function backtrack(lexbuf_1) {
  lexbuf_1.pos = lexbuf_1.marked_pos | 0;
  lexbuf_1.curr_bol = lexbuf_1.marked_bol | 0;
  lexbuf_1.curr_line = lexbuf_1.marked_line | 0;
  return lexbuf_1.marked_val | 0;
}

function lexeme_start(lexbuf_1) {
  return lexbuf_1.start_pos + lexbuf_1.offset;
}

function lexeme_end(lexbuf_1) {
  return lexbuf_1.pos + lexbuf_1.offset;
}

function lexeme(lexbuf_1) {
  return lexbuf_1.src.slice(lexbuf_1.start_pos, lexbuf_1.pos - 1 + 1);
}

function lexeme_char(lexbuf_1, pos) {
  return lexbuf_1.src[lexbuf_1.start_pos + pos];
}

class position extends _Types.Record {
  constructor(pos_fname, pos_lnum, pos_cnum, pos_bol) {
    super();
    this.pos_fname = pos_fname;
    this.pos_lnum = pos_lnum | 0;
    this.pos_cnum = pos_cnum | 0;
    this.pos_bol = pos_bol | 0;
  }

}

exports.position = position;

function position$reflection() {
  return (0, _Reflection.record_type)("Fable.Sedlex.Compiler.position", [], position, () => [["pos_fname", _Reflection.string_type], ["pos_lnum", _Reflection.int32_type], ["pos_cnum", _Reflection.int32_type], ["pos_bol", _Reflection.int32_type]]);
}

function lexing_positions(lexbuf_1) {
  return [new position(lexbuf_1.filename, lexbuf_1.start_line, lexbuf_1.start_pos + lexbuf_1.offset, lexbuf_1.start_bol), new position(lexbuf_1.filename, lexbuf_1.curr_line, lexbuf_1.pos + lexbuf_1.offset, lexbuf_1.curr_bol)];
}

function with_tokenizer(lexer$0027, lexbuf_1) {
  return () => {
    const token = lexer$0027(lexbuf_1);
    const patternInput = lexing_positions(lexbuf_1);
    return [token, patternInput[0], patternInput[1]];
  };
}

const Utf8_from_ustring = from_ustring;
exports.Utf8_from_ustring = Utf8_from_ustring;

function Utf8_lexeme_char(lexbuf_1, pos) {
  return lexeme_char(lexbuf_1, pos);
}

function Utf8_sub_lexeme(lexbuf_1, pos, len) {
  return lexbuf_1.src.slice(lexbuf_1.start_pos + pos, lexbuf_1.start_pos + pos + len - 1 + 1);
}

function Utf8_lexeme(lexbuf_1) {
  return lexbuf_1.src.slice(lexbuf_1.start_pos, lexbuf_1.pos - 1 + 1);
}

function inline_thread(cu, token_creator) {
  let decision_funcs = (0, _Map.empty)();
  let state_funcs = (0, _Map.empty)();

  const evaluate_decision_func = tree => {
    const matchValue = (0, _Map.tryFind)(tree, decision_funcs);

    if (matchValue == null) {
      let f_1;

      switch (tree.tag) {
        case 2:
          {
            f_1 = _arg1 => tree.fields[0];

            break;
          }

        case 1:
          {
            f_1 = c_1 => tree.fields[1][c_1 - tree.fields[0]] - 1;

            break;
          }

        default:
          {
            const yes_f = evaluate_decision_func(tree.fields[1]);
            const no_f = evaluate_decision_func(tree.fields[2]);

            f_1 = c => c <= tree.fields[0] ? yes_f(c) : no_f(c);
          }
      }

      decision_funcs = (0, _Map.add)(tree, f_1, decision_funcs);
      return f_1;
    } else {
      return matchValue;
    }
  };

  const evaluate_state_func = lang_1 => {
    switch (lang_1.tag) {
      case 3:
        {
          const func_ref = (0, _Map.find)(lang_1.fields[0], state_funcs);
          return buf_1 => func_ref.contents(buf_1);
        }

      case 4:
        {
          return _arg2 => lang_1.fields[0];
        }

      case 2:
        {
          const f_2 = evaluate_state_func(lang_1.fields[1]);
          return buf_2 => {
            mark(buf_2, lang_1.fields[0]);
            return f_2(buf_2) | 0;
          };
        }

      case 0:
        {
          const f_cases = (0, _Array.map)(evaluate_state_func, lang_1.fields[1]);
          const f_error = evaluate_state_func(lang_1.fields[2]);
          const decision_func = evaluate_decision_func(lang_1.fields[0]);
          return buf_3 => {
            const matchValue_1 = (0, _Array.tryItem)(decision_func(public_next_int(buf_3)), f_cases);
            return (matchValue_1 != null ? matchValue_1(buf_3) : f_error(buf_3)) | 0;
          };
        }

      default:
        {
          return backtrack;
        }
    }
  };

  state_funcs = (0, _Map.map)((_arg4, _arg3) => new _Types.FSharpRef(null), cu.states);
  const enumerator = (0, _Util.getEnumerator)(cu.states);

  try {
    while (enumerator["System.Collections.IEnumerator.MoveNext"]()) {
      const kv = enumerator["System.Collections.Generic.IEnumerator`1.get_Current"]();
      (0, _Map.FSharpMap__get_Item)(state_funcs, kv[0]).contents = evaluate_state_func(kv[1]);
    }
  } finally {
    (0, _Util.disposeSafe)(enumerator);
  }

  const enumerator_1 = (0, _Util.getEnumerator)(cu.referenced_decision_trees);

  try {
    while (enumerator_1["System.Collections.IEnumerator.MoveNext"]()) {
      evaluate_decision_func(enumerator_1["System.Collections.Generic.IEnumerator`1.get_Current"]());
    }
  } finally {
    (0, _Util.disposeSafe)(enumerator_1);
  }

  const patternInput = cu.lex_code;
  const initial_state_fun = (0, _Map.find)(0, state_funcs).contents;
  return buf_4 => {
    start(buf_4);
    const matchValue_2 = (0, _Array.tryItem)(initial_state_fun(buf_4), patternInput[0]);

    if (matchValue_2 == null) {
      throw new Error(patternInput[1]);
    } else if (matchValue_2.tag === 1) {
      const token_id = matchValue_2.fields[0] | 0;
      let patternInput_1;
      const lexbuf_1 = buf_4;
      patternInput_1 = [lexbuf_1.start_line, lexbuf_1.pos - lexbuf_1.curr_bol, lexbuf_1.pos - lexbuf_1.start_pos];
      return token_creator([token_id, lexeme(buf_4), patternInput_1[0], patternInput_1[1], patternInput_1[2], buf_4.start_pos, buf_4.filename]);
    } else {
      return void 0;
    }
  };
}

const Lexer_discard = new keep_token(0);
exports.Lexer_discard = Lexer_discard;

function Lexer_tokenize(i) {
  return new keep_token(1, i);
}

function por(a, b) {
  return succ => Automata_alt(a, b, succ);
}

function pseq(xs) {
  const xs_1 = (0, _List.ofArray)(xs);

  if (!(0, _List.isEmpty)(xs_1)) {
    return (0, _List.fold)((r, p_1) => succ => Automata_seq(r, p_1, succ), (0, _List.head)(xs_1), (0, _List.tail)(xs_1));
  } else {
    throw new Error("empty sequence");
  }
}

function pstar(x) {
  return succ => Automata_rep(x, succ);
}

function pplus(x) {
  return succ => Automata_plus(x, succ);
}

function prep(p0, i1, i2) {
  if (0 <= i1 && i1 <= i2) {
    return Automata_repeat(p0, i1, i2);
  } else {
    throw new Error(`repeat operator requires 0 <= ${i1} <= ${i2}`);
  }
}

function popt(p) {
  return succ_1 => Automata_alt(Automata_eps, p, succ_1);
}

function pcompl(arg) {
  const matchValue = Automata_compl(arg);

  if (matchValue == null) {
    throw new Error("the Compl operator can only applied to a single-character length regexp");
  } else {
    return matchValue;
  }
}

function psub(arg) {
  return p1 => Automata_char_pair_op((0, _Util.uncurry)(2, Automata_subtract), "sub", arg, p1);
}

function pintersct(arg) {
  return p1 => Automata_char_pair_op((0, _Util.uncurry)(2, Automata_intersection), "intersect", arg, p1);
}

function pchars(arg) {
  const arg00 = (0, _List.ofArray)(arg);
  let clo1;
  let c = Cset_empty();
  const enumerator = (0, _Util.getEnumerator)(arg00);

  try {
    while (enumerator["System.Collections.IEnumerator.MoveNext"]()) {
      const ch = enumerator["System.Collections.Generic.IEnumerator`1.get_Current"]();
      const i = ch.charCodeAt(0) | 0;
      c = Cset_union(c, Cset_singleton(i));
    }
  } finally {
    (0, _Util.disposeSafe)(enumerator);
  }

  clo1 = succ => Automata_chars(c, succ);

  return clo1;
}

function pinterval(i_start, i_end) {
  const c = Cset_interval(i_start, i_end);
  return succ => Automata_chars(c, succ);
}

function regexp_for_char(c) {
  const c_1 = Cset_singleton(c.charCodeAt(0));
  return succ => Automata_chars(c_1, succ);
}

function regexp_for_string(s) {
  const aux = n => {
    if (n === s.length) {
      return Automata_eps;
    } else {
      const r1 = regexp_for_char(s[n]);
      const r2 = aux(n + 1);
      return succ_1 => Automata_seq(r1, r2, succ_1);
    }
  };

  return aux(0);
}

function pstring(s) {
  return regexp_for_string(s);
}

function pchar(c) {
  return regexp_for_char(c);
}

const pany = pinterval(0, Cset_max_code);
exports.pany = pany;

const peof = (() => {
  const c = Cset_singleton(-1);
  return succ => Automata_chars(c, succ);
})();

exports.peof = peof;