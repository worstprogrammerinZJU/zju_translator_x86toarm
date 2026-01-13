	.text
	.globl	luaopen_time_ticker             // -- Begin function luaopen_time_ticker
	.p2align	2
	.type	luaopen_time_ticker,@function
luaopen_time_ticker:                    // @luaopen_time_ticker
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, time_ticklib
	ldr	w2, [x8, :lo12:time_ticklib]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_register
	mov	w0, #1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	luaopen_time_ticker, .Lfunc_end0-luaopen_time_ticker
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ticker"
	.size	.L.str, 7
	.type	time_ticklib,@object            // @time_ticklib
	.bss
	.globl	time_ticklib
	.p2align	2
time_ticklib:
	.word	0                               // 0x0
	.size	time_ticklib, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym luaL_register
	.addrsig_sym time_ticklib