		.data
		.setcpu 8085

		.export __tmp
		.export __hireg
		.export __retaddr
		.export __ret
		.export __xchgret
		.export	__callhl

; __tmp must be the word before hireg
__tmp:
		.word	0
__hireg:
		.word	0
__xchgret:
		xchg
__ret:
		.byte	0xC3		; JMP
__retaddr:
		.word	0

		.code

__callhl:	pchl
