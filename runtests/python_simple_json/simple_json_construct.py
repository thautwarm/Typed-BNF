from __future__ import annotations as __01asda1ha
from lark import Token as token
import dataclasses as dataclasses
import typing as typing
from .simple_json_require import (appendList,unesc,getStr,parseFlt,parseInt)

@dataclasses.dataclass
class JsonBool:
    _: bool

@dataclasses.dataclass
class JsonDict:
    _: list[JsonPair]

@dataclasses.dataclass
class JsonFlt:
    _: float

@dataclasses.dataclass
class JsonInt:
    _: int

@dataclasses.dataclass
class JsonList:
    elements: list[Json]

@dataclasses.dataclass
class JsonNull:
    pass

@dataclasses.dataclass
class JsonStr:
    _: str

if typing.TYPE_CHECKING:
    Json = typing.Union[ JsonStr,JsonNull,JsonList,JsonInt,JsonFlt,JsonDict,JsonBool]
else:
    Json = (JsonStr,JsonNull,JsonList,JsonInt,JsonFlt,JsonDict,JsonBool)

@dataclasses.dataclass
class JsonPair:
    name: str
    value: Json

JsonPair = JsonPair

