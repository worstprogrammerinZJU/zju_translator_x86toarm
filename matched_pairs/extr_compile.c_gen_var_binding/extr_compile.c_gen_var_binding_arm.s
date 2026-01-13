	.text
	.globl	gen_var_binding                 // -- Begin function gen_var_binding
	.p2align	2
	.type	gen_var_binding,@function
gen_var_binding:                        // @gen_var_binding
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	adrp	x8, STOREV
	ldr	w0, [x8, :lo12:STOREV]
	ldr	x1, [sp, #16]
	bl	gen_op_unbound
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldr	w2, [sp, #12]
	bl	gen_destructure
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_var_binding, .Lfunc_end0-gen_var_binding
                                        // -- End function
	.type	STOREV,@object                  // @STOREV
	.bss
	.globl	STOREV
	.p2align	2
STOREV:
	.word	0                               // 0x0
	.size	STOREV, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_destructure
	.addrsig_sym gen_op_unbound
	.addrsig_sym STOREV