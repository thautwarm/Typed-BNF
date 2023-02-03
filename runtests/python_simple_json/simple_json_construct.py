from __future__ import annotations as __01asda1ha
from lark import Token as token
import dataclasses as dataclasses
import typing as typing
from .simple_json_require import (appendList,unesc,getStr,parseFlt,parseInt)
@dataclasses.dataclass
class JBool:
    value: bool
@dataclasses.dataclass
class JDict:
    value: list[NameValuePair[str, Json]]
@dataclasses.dataclass
class JFlt:
    value: float
@dataclasses.dataclass
class JInt:
    value: int
@dataclasses.dataclass
class JList:
    elements: list[Json]
@dataclasses.dataclass
class JNull:
    pass
@dataclasses.dataclass
class JStr:
    value: str
if typing.TYPE_CHECKING:
    Json = typing.Union[JStr,JNull,JList,JInt,JFlt,JDict,JBool]
else:
    Json = (JStr,JNull,JList,JInt,JFlt,JDict,JBool)
@dataclasses.dataclass
class NameValuePair:
    name: object
    value: object
NameValuePair = NameValuePair
