Dynamic analysis consists of executing a binary in a controlled environment to observe its runtime behavior.
Unlike static analysis, it reveals the actual values of variables, API calls, and logic that may be obfuscated or packed.
In this project, we apply SAT/SMT solving techniques using Z3 to extract and solve logical constraints from a binary without bruteforce.
Tools used: objdump, Ghidra, GDB, ltrace, Z3 Python solver.