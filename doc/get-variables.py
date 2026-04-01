from pathlib import Path
import re
from rich import print

ptrn_check = re.compile(r'score (\S+) (variable|flag|options) matches')
ptrn_set = re.compile(r'scoreboard players (add|set|remove|operation) (.+?) (variable|flag|options)')

variable = []
flag = []
options = []

def walk(path):
	for item in Path(path).iterdir():
		if item.is_dir():
			walk(item)
			continue
		with open(item, "r") as file:
			for line in file:
				for match in ptrn_check.finditer(line):
					match match.group(2):
						case "variable":
							if match.group(1) in variable: continue
							variable.append(match.group(1))
						case "flag":
							if match.group(1) in flag: continue
							flag.append(match.group(1))
						case "options":
							if match.group(1) in options: continue
							options.append(match.group(1))
				for match in ptrn_set.finditer(line):
					match match.group(3):
						case "variable":
							if match.group(2) in variable: continue
							variable.append(match.group(2))
						case "flag":
							if match.group(2) in flag: continue
							flag.append(match.group(2))
						case "options":
							if match.group(2) in options: continue
							options.append(match.group(2))

walk("data/slug_arena/functions")

for item in variable:
	print(f"[green]{item}[/green]")
for item in flag:
	print(f"[red]{item}[/red]")
for item in options:
	print(f"[yellow]{item}[/yellow]")