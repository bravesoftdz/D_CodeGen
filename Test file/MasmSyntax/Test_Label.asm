;<01374802>

	PUSH    -2
	POP     EDI
	MOV     DWORD PTR SS:[EBP-4],EDI
	MOV     EAX,$5A4D
	CMP     WORD PTR DS:[$1340000],AX
	JNZ     @L00000001
	MOV     EAX,DWORD PTR DS:[$134003C]
	CMP     DWORD PTR DS:[EAX+$1340000],$4550
	JNZ     @L00000001
	MOV     ECX,$10B
	CMP     WORD PTR DS:[EAX+$1340018],CX
	JNZ     @L00000001
	CMP     DWORD PTR DS:[EAX+$1340074],$0E
	JBE     @L00000001
	XOR     ECX,ECX
	CMP     DWORD PTR DS:[EAX+$13400E8],ESI
	SETNE   CL
	MOV     DWORD PTR SS:[EBP-$1C],ECX
	JMP     @L00000002

@L00000001:
	MOV     DWORD PTR SS:[EBP-$1C],ESI

@L00000002:
	XOR     EBX,EBX
	INC     EBX
	PUSH    EBX
	CALL    $01378C24
	POP     ECX
	TEST    EAX,EAX
	JNZ     @L00000003
	PUSH    $1C
	CALL    $013747BE
	POP     ECX

@L00000003:
	CALL    $0137740B
	TEST    EAX,EAX
	JNZ     @L00000004
	PUSH    $10
	CALL    $013747BE
	POP     ECX

@L00000004:
	CALL    $0137CD9C
	MOV     DWORD PTR SS:[EBP-4],EBX
	CALL    $0137BD35
	TEST    EAX,EAX
	JGE     @L00000005
	PUSH    $1B
	CALL    $013777FF
	POP     ECX

@L00000005:
	CALL    $0137CD96
	MOV     DWORD PTR DS:[$13ABE18],EAX
	CALL    $0137CD3F
	MOV     DWORD PTR DS:[$139DBDC],EAX
	CALL    $0137CC91
	TEST    EAX,EAX
	JGE     @L00000006
	PUSH    $8
	CALL    $013777FF
	POP     ECX

@L00000006:
	CALL    $0137CA62
	TEST    EAX,EAX
	JGE     @L00000007
	PUSH    $9
	CALL    $013777FF
	POP     ECX

@L00000007:
	PUSH    EBX
	CALL    $013778BE
	POP     ECX
	CMP     EAX,ESI
	JE      @L00000008
	PUSH    EAX
	CALL    $013777FF
	POP     ECX

@L00000008:
	CALL    $0137CA1C
	TEST    BYTE PTR SS:[EBP-$3C],BL
	JE      @L00000009
	MOVZX   ECX,WORD PTR SS:[EBP-$38]
	JMP     @L00000010

@L00000009:
	PUSH    $0A
	POP     ECX

@L00000010:
	PUSH    ECX
	PUSH    EAX
	PUSH    ESI
	PUSH    $1340000
	CALL    $0135A270
