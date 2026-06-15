from pathlib import Path
import re

root = Path(__file__).resolve().parent.parent
refs = set()
for p in root.glob("**/*"):
    if p.suffix not in {".dch", ".dtl", ".tscn", ".gd", ".tres"}:
        continue
    if "addons" in str(p):
        continue
    try:
        text = p.read_text(encoding="utf-8")
    except OSError:
        continue
    for match in re.finditer(r"res://art/[^\s\"\]]+", text):
        refs.add(match.group(0))

missing = [ref for ref in sorted(refs) if not (root / ref.replace("res://", "")).exists()]
print(f"Missing art refs: {len(missing)}")
for ref in missing:
    print(f"  {ref}")
