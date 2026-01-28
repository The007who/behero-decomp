

; 0x00000040
	; main initialization

	; disable interrupts
	int off 		; (f140)
	fir_mov off 	; (f145)

	; set the stack pointer
	sp = $2fe0		; (9108 2fe0)

	; likely sets the cpu speed
	r1 = $8418		; (9309 8418)
	[$7807] = r1	; (d319 7807)

	;
	r1 = $20		; (9260)
	[$7817] = r1	; (d319 7817)

	;
	loop:
	r1 = [$780f]	; (9311 780f)
	r1 &= $0f		; (b24f)
	cmp r1, $02		; (4242)
	jne loop		; (4e45)

	;
	r1 = $02		; (9242)
	[$7819] = r1 	; (d319 7819)

	; critical timing spacers
	nop				; (f165)
	nop				; (f165)

	;
	loop:
	r1 = [$7819]	; (9311 7819)
	test r1, $02	; (c242)
	jne loop		; (4e44)

	;
	r1 = $1d		; (925d)
	[$7819] = r1	; (d319 7819)

	;
	r1 = $00		; (9240)
	[$780a] = r1	; (d319 780a)

	;
	r1 = $00		; (9240)
	[$7808] = r1	; (d319 7808)

	;
	r1 = $02		; (9242)
	[$782f] = r1	; (d319 782f)

	;
	r1 = $05da		; (9309 05da)
	[$783d] = r1	; (d319 783d)

	;
	r1 = $0f58		; (9309 0f58)
	[$783c] = r1	; (d319 783c)

	;
	r1 = $2400		; (9309 2400)
	[$783b] = r1	; (d319 783b)

	;
	r1 = $02		; (9242)
	[$783e] = r1	; (d319 783e)

	;
	r1 = $5011		; (9309 5011)
	[$783a] = r1	; (d319 783a)

	; lcd setup
	r1 = $2492		; (9309 2492)
	[$7874] = r1	; (d319 7874)
	[$787c] = r1	; (d319 787c)
	[$7888] = r1	; (d319 7888)
	[$787e] = r1	; (d319 787e)

	; maybe test mode, $7860 might be a hidden port
	r1 = [$7860]	; (9311 7860)
	test r1, $0080	; (c309 0080)
	je exit			; (5e04)
	call $0029c4	; (f040 29c4)
	nop				; (f165)
	infinite:
	jmp infinite	; (ee41)
	exit:
	
	;
	sp -= $04		; (2044)
	r2 = sp + $0001	; (0508 0001)
	r1 = $00		; (9240)
	[r2++] = r1		; (d2d2)
	r3 = $03		; (9643)
	[r2++] = r3		; (d6d2)
	r1 += $2000		; (0309 2000)
	[r2++] = r1		; (d2d2)
	[r2] = r3		; (d6c2)
	call $0009bc	; (f040 09bc)

	;
	sp += $04		; (0044)
	ds = $00		; (fe00)
	r1 = $048c		; (9309 048c)
	r2 = $2fea		; (950a 2fea)
	r3 = $0016		; (970b 0016)
	loop:
	r4 = ds:[r1++]	; (98f1)
	[r2++] = r4		; (d8d2)
	r3 -= $01		; (2641)
	jne loop		; (4e44)
	call $000aeb	; (f040 0aeb)
	infinite:
	jmp infinite	; (4e44)

	nop				; (f165)
	nop				; (f165)
	nop				; (f165)
	nop				; (f165)
	reti			; (9a98)