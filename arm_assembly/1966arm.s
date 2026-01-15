	.text
	.p2align	2                               // -- Begin function gen_slice_index
	.type	gen_slice_index,@function
gen_slice_index:                        // @gen_slice_index
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	bl	jv_object
	bl	gen_const
	bl	gen_subexp
	str	w0, [sp, #32]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	gen_const
	bl	gen_subexp
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	gen_subexp
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	adrp	x8, INSERT
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:INSERT]
	bl	gen_op_simple
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	bl	gen_const
	bl	gen_subexp
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	gen_subexp
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #28]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:INSERT]
	bl	gen_op_simple
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	w2, [sp, #16]                   // 4-byte Folded Reload
	ldr	w3, [sp, #20]                   // 4-byte Folded Reload
	ldr	w4, [sp, #24]                   // 4-byte Folded Reload
	ldr	w5, [sp, #28]                   // 4-byte Folded Reload
	mov	w6, w0
	ldr	w0, [sp, #32]                   // 4-byte Folded Reload
	bl	BLOCK
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-24]                 // 4-byte Folded Spill
	ldur	w8, [x29, #-4]
	stur	w8, [x29, #-28]                 // 4-byte Folded Spill
	ldur	w0, [x29, #-16]
	bl	gen_op_simple
	ldur	w1, [x29, #-28]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-24]                 // 4-byte Folded Reload
	bl	BLOCK
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	gen_slice_index, .Lfunc_end0-gen_slice_index
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"start"
	.size	.L.str, 6
	.type	INSERT,@object                  // @INSERT
	.bss
	.globl	INSERT
	.p2align	2
INSERT:
	.word	0                               // 0x0
	.size	INSERT, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"end"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_slice_index
	.addrsig_sym BLOCK
	.addrsig_sym gen_subexp
	.addrsig_sym gen_const
	.addrsig_sym jv_object
	.addrsig_sym jv_string
	.addrsig_sym gen_op_simple
	.addrsig_sym INSERT