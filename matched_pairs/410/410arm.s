	.text
	.p2align	2                               // -- Begin function handle_time_macro
	.type	handle_time_macro,@function
handle_time_macro:                      // @handle_time_macro
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	sub	x0, x29, #18
	str	x0, [sp]                        // 8-byte Folded Spill
	mov	w1, #10
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	adrp	x3, now
	add	x3, x3, :lo12:now
	bl	strftime
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, TSTRING
	ldr	w8, [x8, :lo12:TSTRING]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	bl	strdup
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	make_token_pushback
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	handle_time_macro, .Lfunc_end0-handle_time_macro
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%T"
	.size	.L.str, 3
	.type	now,@object                     // @now
	.bss
	.globl	now
	.p2align	2
now:
	.word	0                               // 0x0
	.size	now, 4
	.type	TSTRING,@object                 // @TSTRING
	.globl	TSTRING
	.p2align	2
TSTRING:
	.word	0                               // 0x0
	.size	TSTRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_time_macro
	.addrsig_sym strftime
	.addrsig_sym make_token_pushback
	.addrsig_sym strdup
	.addrsig_sym now
	.addrsig_sym TSTRING