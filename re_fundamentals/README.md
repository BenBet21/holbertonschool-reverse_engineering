# holbertonschool-reverse_engineering

Reverse Engineering
Le reverse engineering (RE) consiste à analyser un programme compilé pour comprendre son fonctionnement sans accès au code source.
Il s'applique principalement à l'analyse de malwares, la recherche de vulnérabilités et l'interopérabilité logicielle.
Le désassemblage traduit le code machine en assembleur lisible ; la décompilation reconstruit un pseudo-code de haut niveau.
Les outils principaux sont Ghidra et IDA Pro pour l'analyse statique, GDB et x64dbg pour l'analyse dynamique.
Les formats exécutables courants sont PE (Windows), ELF (Linux) et Mach-O (macOS).
Les malwares utilisent des techniques anti-RE : packing, obfuscation, anti-debugging et détection de sandbox.
L'analyse statique examine le binaire sans l'exécuter ; l'analyse dynamique observe son comportement en temps réel.
Les Control Flow Graphs (CFG) et les cross-références (XREFs) sont essentiels pour naviguer dans un binaire complexe.
La pratique régulière sur des plateformes CTF (picoCTF, crackmes.one) est indispensable pour progresser.