	.text
	.globl	gen_and                         // -- Begin function gen_and
	.p2align	2
	.type	gen_and,@function
gen_and:                                // @gen_and
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	adrp	x8, DUP
	ldr	w0, [x8, :lo12:DUP]
	bl	gen_op_simple
	stur	w0, [x29, #-12]                 // 4-byte Folded Spill
	ldur	w8, [x29, #-4]
	stur	w8, [x29, #-16]                 // 4-byte Folded Spill
	adrp	x8, POP
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:POP]
	bl	gen_op_simple
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	bl	jv_true
	bl	gen_const
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	jv_false
	bl	gen_const
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	gen_condbranch
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	BLOCK
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	stur	w0, [x29, #-20]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:POP]
	bl	gen_op_simple
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	bl	jv_false
	bl	gen_const
	mov	w1, w0
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	bl	BLOCK
	mov	w1, w0
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	bl	gen_condbranch
	ldur	w1, [x29, #-16]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	bl	BLOCK
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	gen_and, .Lfunc_end0-gen_and
                                        // -- End function
	.type	DUP,@object                     // @DUP
	.bss
	.globl	DUP
	.p2align	2
DUP:
	.word	0                               // 0x0
	.size	DUP, 4
	.type	POP,@object                     // @POP
	.globl	POP
	.p2align	2
POP:
	.word	0                               // 0x0
	.size	POP, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_condbranch
	.addrsig_sym gen_const
	.addrsig_sym jv_true
	.addrsig_sym jv_false
	.addrsig_sym DUP
	.addrsig_sym POP