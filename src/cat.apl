#!/usr/bin/env -S apl "-s --"

∇files ← list_files path; result
    files ← ⍬
    result ← ⎕FIO.dir_files path
    →0 ⍴⍨ result ≡ ¯2
    →ISFILE ⍴⍨ result ≡ ¯20
    files ← {list_files (path, "/", ⍵)}¨ result
LOOP:
    →(1 ∊ 1 < ≡¨ files)↓0
    files ← ⊃,/files ⊢[1 ≥ ≡¨ files] {⊂⊂⍵}¨ files
    →LOOP
ISFILE:
    files ← ⊂path
∇

∇args ← parse_args;runtime_path;path
    args ← {⍵ ↓⍨ ⍵ ⍳ ⊂"--"} ⎕ARG
    runtime_path ← ⊃args[1]

    2 ≤ ≢args →→ path ← ⊃args[2] ←→ path ← "-"  ←←

    args ← runtime_path path
∇

∇results ← cat path; matches
    results ← ⍬
    INPUT→path ≡ "-"
    path ← list_files path
    text ← { ⍵ (⊣⎕FIO.read_text ⍵) }¨ path
    ⊣{ ⊣("\n%s\n===\n" (,⊃1↑⍵)) ⎕FIO.fprintf 1 ⋄ ⊣{ ("%s\n" (⍵)) ⎕FIO.fprintf 1 }¨ ⊃(1↓⍵) }¨ text
    →0
INPUT:
    ⊣(⊂"Digite )OFF para encerrar o programa\n") ⎕FIO.fprintf 1
LOOP:
    text ← ⍞
    ⊣("\"%s\"\n" (⊃text)) ⎕FIO.fprintf 1
    LOOP→text ≢ ")OFF"
∇

]BOXING 8

args ← parse_args
⊣cat (⊃args[2])

)OFF
