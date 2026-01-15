	.text
	.globl	stack_save                      // -- Begin function stack_save
	.p2align	2
	.type	stack_save,@function
stack_save:                             // @stack_save
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x2, [x29, #-8]
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	add	x0, x8, #24
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #20]
	mov	w2, #32
	bl	stack_push_block
	ldur	x8, [x29, #-16]
	str	w0, [x8, #20]
	ldur	x8, [x29, #-16]
	add	x0, x8, #24
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #20]
	bl	stack_block
	str	x0, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #16]
	str	w8, [x9, #24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	str	w8, [x9, #20]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	bl	jv_copy
	bl	jv_array_length
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	mov	w8, wzr
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #16]
	str	w8, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #12]
	bl	jv_copy
	ldr	x8, [sp, #16]
	str	w0, [x8, #12]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #16]
	str	w8, [x9, #8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	ldur	w8, [x29, #-4]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-8]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stack_save, .Lfunc_end0-stack_save
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_push_block
	.addrsig_sym stack_block
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym JV_KIND_ARRAY