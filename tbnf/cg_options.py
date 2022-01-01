from __future__ import annotations
from _tbnf.src.backends_common import CodeGenOptions
import typing

if typing.TYPE_CHECKING:
    from typing import *


class Options(CodeGenOptions):
    def __init__(self, config, resource_loader: Callable[[str], str]):
        self.config = config
        self._resource_loader = resource_loader

    def request_resource(self, resource_key: str) -> str:
        return self._resource_loader(resource_key)

    @property
    def start_rule_qualified_type(self) -> Optional[str]:
        return self.config.get("start_rule_qualified_type")

    @property
    def rename_ctor(self) -> Optional[Callable[[str], str]]:
        return self.config.get("rename_ctor")

    @property
    def rename_field(self) -> Optional[Callable[[str], str]]:
        return self.config.get("rename_field")

    @property
    def rename_type(self) -> Optional[Callable[[str], str]]:
        return self.config.get("rename_type")

    @property
    def rename_var(self) -> Optional[Callable[[str], str]]:
        return self.config.get("rename_var")
