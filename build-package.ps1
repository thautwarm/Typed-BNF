$PROJ="_tbnf"
fable --lang Python TBNF.fsproj -o "${PROJ}"

# "import sys;import os;sys.path.append(os.path.dirname(__file__))" | Out-File -FilePath "./${PROJ}/__init__.py"

"" | Out-File -FilePath "./${PROJ}/fable_modules/__init__.py"

try
{ rm ${PROJ}/fable_modules/.gitignore -ErrorAction Stop }
catch { }
