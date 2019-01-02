xor ax, ax ; < translating this idk why I put that there, its kinda dumb, prob was thinking id make it in 40 col text mode initially
mov ax, 13h
int 10h
OPSIZE: mov esp, 01FEh 
OPSIZE: mov ebp, 01FEh 
OPSIZE: push 0
OPSIZE: push 0
mov al, dl
ADSIZE: mov cx, [esp]
ADSIZE: mov dx, [esp+4]
mov ah, 0Ch
int 10h
OPSIZE: ADSIZE: inc [esp]
OPSIZE: ADSIZE: cmp [esp], 140h
jl e1 ; line 8
OPSIZE: ADSIZE: mov [esp], 0
OPSIZE: ADSIZE: inc [esp+4]
OPSIZE: ADSIZE: cmp [esp+4], 0xC8h
jl c6 ; line 8
