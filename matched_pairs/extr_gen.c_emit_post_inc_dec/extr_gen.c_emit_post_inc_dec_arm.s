	.text
	.p2align	2                               // -- Begin function emit_post_inc_dec
	.type	emit_post_inc_dec,@function
emit_post_inc_dec:                      // @emit_post_inc_dec
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	emit_expr
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	push
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	mov	w8, #1
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	w2, [sp, #4]                    // 4-byte Folded Reload
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	emit_store
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	pop
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_post_inc_dec, .Lfunc_end0-emit_post_inc_dec
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rax"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s $%d, #rax"
	.size	.L.str.1, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_post_inc_dec
	.addrsig_sym emit_expr
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym emit_store
	.addrsig_sym pop
	.addrsig_sym SAVE