	.text
	.globl	gen_try_handler                 // -- Begin function gen_try_handler
	.p2align	2
	.type	gen_try_handler,@function
gen_try_handler:                        // @gen_try_handler
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	bl	gen_const
	bl	gen_lambda
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	bl	gen_noop
	bl	gen_lambda
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	BLOCK
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	gen_call
	stur	w0, [x29, #-12]                 // 4-byte Folded Spill
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	jv_string
	bl	gen_const
	bl	gen_subexp
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	bl	gen_noop
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	adrp	x8, INDEX
	ldr	w0, [x8, :lo12:INDEX]
	bl	gen_op_simple
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	bl	BLOCK
	mov	w1, w0
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	bl	gen_and
	stur	w0, [x29, #-8]                  // 4-byte Folded Spill
	bl	gen_noop
	mov	w1, w0
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	gen_call
	mov	w1, w0
	ldur	w0, [x29, #-8]                  // 4-byte Folded Reload
	ldur	w2, [x29, #-4]
	bl	gen_cond
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_try_handler, .Lfunc_end0-gen_try_handler
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_equal"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"object"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"__jq"
	.size	.L.str.2, 5
	.type	INDEX,@object                   // @INDEX
	.bss
	.globl	INDEX
	.p2align	2
INDEX:
	.word	0                               // 0x0
	.size	INDEX, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"error"
	.size	.L.str.3, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_cond
	.addrsig_sym gen_and
	.addrsig_sym gen_call
	.addrsig_sym BLOCK
	.addrsig_sym gen_lambda
	.addrsig_sym gen_const
	.addrsig_sym jv_string
	.addrsig_sym gen_noop
	.addrsig_sym gen_subexp
	.addrsig_sym gen_op_simple
	.addrsig_sym INDEX