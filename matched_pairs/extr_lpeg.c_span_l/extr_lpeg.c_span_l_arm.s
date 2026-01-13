	.text
	.p2align	2                               // -- Begin function span_l
	.type	span_l,@function
span_l:                                 // @span_l
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	stur	w1, [x29, #-20]                 // 4-byte Folded Spill
	bl	luaL_checkstring
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, span
	ldr	w8, [x8, :lo12:span]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	strlen
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	add	x3, x8, #1
	bl	newpattfunc
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	span_l, .Lfunc_end0-span_l
                                        // -- End function
	.type	span,@object                    // @span
	.bss
	.globl	span
	.p2align	2
span:
	.word	0                               // 0x0
	.size	span, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym span_l
	.addrsig_sym luaL_checkstring
	.addrsig_sym newpattfunc
	.addrsig_sym strlen
	.addrsig_sym span