	.text
	.globl	find_replace                    // -- Begin function find_replace
	.p2align	2
	.type	find_replace,@function
find_replace:                           // @find_replace
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	add	x0, sp, #48
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	mov	w1, wzr
	mov	x2, #4096
	bl	memset
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldur	x2, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	bl	strstr
	str	x0, [sp, #40]
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-32]
	ldur	x2, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #40]
	strb	wzr, [x8]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	strlen
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	w9, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	add	x4, x8, w9, sxtw
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	add	x2, sp, #48
	bl	sprintf
	b	.LBB0_3
.LBB0_3:
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #80
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	find_replace, .Lfunc_end0-find_replace
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s%s%s"
	.size	.L.str.1, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym strstr
	.addrsig_sym strlen