Static Analysis in Reverse Engineering

Static analysis is the process of examining a binary without executing it — inspecting its structure, strings, sections, and disassembled code to understand its behavior safely.
The first step is always strings, which extracts human-readable text embedded in the binary: hardcoded credentials, URLs, error messages, or — as in this exercise — a flag reconstructed character by character on the stack to evade naive string searches.
When strings falls short, tools like objdump and Radare2 go deeper: objdump -s -j .rodata reveals constants stored in read-only memory, while r2 -A + pdf @sym.function disassembles individual functions and exposes logic invisible to surface-level inspection.
In this task, the flag HOLB{Reverse_Engineering_is_Fun} was hidden inside sym.check_flag, built byte by byte via sequential mov instructions — a classic anti-strings technique that only yields to disassembly-level analysis.
Tools used: strings, file, sha256sum, objdump, Radare2 — all local, no online services.