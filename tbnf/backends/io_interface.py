from typing_extensions import Protocol
import io


class _Write(Protocol):
    def write(self, s: str) -> int: ...
class OutIO(Protocol):
    def __call__(
        self, filename: str
    ) -> _Write:
        ...
