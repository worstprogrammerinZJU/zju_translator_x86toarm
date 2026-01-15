	.text
	.globl	gen_label                       // -- Begin function gen_label
	.p2align	2
	.type	gen_label,@function
gen_label:                              // @gen_label
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	bl	gen_noop
	bl	gen_lambda
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	adrp	x8, LOADV
	ldr	w0, [x8, :lo12:LOADV]
	ldur	x1, [x29, #-8]
	bl	gen_op_unbound
	bl	gen_lambda
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	BLOCK
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	gen_call
	stur	w0, [x29, #-16]
	adrp	x8, GENLABEL
	ldr	w0, [x8, :lo12:GENLABEL]
	bl	gen_op_simple
	stur	w0, [x29, #-20]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	adrp	x8, POP
	ldr	w0, [x8, :lo12:POP]
	bl	gen_op_simple
	str	w0, [sp, #28]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-12]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-16]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	adrp	x8, BACKTRACK
	ldr	w0, [x8, :lo12:BACKTRACK]
	bl	gen_op_simple
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	bl	gen_noop
	mov	w1, w0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	gen_call
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	gen_cond
	mov	w1, w0
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	bl	gen_try
	mov	w1, w0
	ldr	w0, [sp, #28]                   // 4-byte Folded Reload
	bl	BLOCK
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	bl	gen_wildvar_binding
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	gen_label, .Lfunc_end0-gen_label
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_equal"
	.size	.L.str, 7
	.type	LOADV,@object                   // @LOADV
	.bss
	.globl	LOADV
	.p2align	2
LOADV:
	.word	0                               // 0x0
	.size	LOADV, 4
	.type	GENLABEL,@object                // @GENLABEL
	.globl	GENLABEL
	.p2align	2
GENLABEL:
	.word	0                               // 0x0
	.size	GENLABEL, 4
	.type	POP,@object                     // @POP
	.globl	POP
	.p2align	2
POP:
	.word	0                               // 0x0
	.size	POP, 4
	.type	BACKTRACK,@object               // @BACKTRACK
	.globl	BACKTRACK
	.p2align	2
BACKTRACK:
	.word	0                               // 0x0
	.size	BACKTRACK, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"error"
	.size	.L.str.1, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_call
	.addrsig_sym BLOCK
	.addrsig_sym gen_lambda
	.addrsig_sym gen_noop
	.addrsig_sym gen_op_unbound
	.addrsig_sym gen_wildvar_binding
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_try
	.addrsig_sym gen_cond
	.addrsig_sym LOADV
	.addrsig_sym GENLABEL
	.addrsig_sym POP
	.addrsig_sym BACKTRACK