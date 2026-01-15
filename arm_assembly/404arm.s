	.text
	.p2align	2                               // -- Begin function handle_counter_macro
	.type	handle_counter_macro,@function
handle_counter_macro:                   // @handle_counter_macro
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, TNUMBER
	ldr	w8, [x8, :lo12:TNUMBER]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x9, handle_counter_macro.counter
	ldr	w1, [x9, :lo12:handle_counter_macro.counter]
	add	w8, w1, #1
	str	w8, [x9, :lo12:handle_counter_macro.counter]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	format
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	make_token_pushback
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	handle_counter_macro, .Lfunc_end0-handle_counter_macro
                                        // -- End function
	.type	handle_counter_macro.counter,@object // @handle_counter_macro.counter
	.local	handle_counter_macro.counter
	.comm	handle_counter_macro.counter,4,4
	.type	TNUMBER,@object                 // @TNUMBER
	.bss
	.globl	TNUMBER
	.p2align	2
TNUMBER:
	.word	0                               // 0x0
	.size	TNUMBER, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_counter_macro
	.addrsig_sym make_token_pushback
	.addrsig_sym format
	.addrsig_sym handle_counter_macro.counter
	.addrsig_sym TNUMBER