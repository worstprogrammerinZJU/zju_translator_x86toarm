	.text
	.p2align	2                               // -- Begin function do_emit_assign_deref
	.type	do_emit_assign_deref,@function
do_emit_assign_deref:                   // @do_emit_assign_deref
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	ldur	x0, [x29, #-8]
	mov	w1, #99
	bl	get_int_reg
	str	x0, [sp, #8]
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp, #8]
	ldur	w2, [x29, #-12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_3
.LBB0_2:
	ldr	x1, [sp, #8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	pop
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	do_emit_assign_deref, .Lfunc_end0-do_emit_assign_deref
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
	.asciz	"mov (#rsp), #rcx"
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mov #%s, %d(#rax)"
	.size	.L.str.1, 18
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"mov #%s, (#rax)"
	.size	.L.str.2, 16
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"rax"
	.size	.L.str.3, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_emit_assign_deref
	.addrsig_sym emit
	.addrsig_sym get_int_reg
	.addrsig_sym pop
	.addrsig_sym SAVE