	.text
	.globl	block_compile                   // -- Begin function block_compile
	.p2align	2
	.type	block_compile,@function
block_compile:                          // @block_compile
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	w3, [x29, #-28]
	mov	w0, #32
	bl	jv_mem_alloc
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	xzr, [x8, #24]
	ldr	x8, [sp, #24]
	str	xzr, [x8, #16]
	mov	w0, #4
	str	w0, [sp]                        // 4-byte Folded Spill
	bl	jv_mem_alloc
	ldr	x8, [sp, #24]
	str	x0, [x8]
	ldur	w0, [x29, #-4]
	bl	count_cfunctions
	mov	w8, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #20]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	wzr, [x8]
	ldr	w1, [sp, #20]
	bl	jv_mem_calloc
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	w0, [x8, #8]
	bl	jv_array
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	w0, [x8, #4]
	bl	jv_object
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	jv_null
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	jv_object_set
	ldr	x8, [sp, #24]
	str	w0, [x8, #8]
	bl	jv_invalid
	add	x4, sp, #16
	str	w0, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	w1, [x29, #-4]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	bl	compile
	str	w0, [sp, #12]
	ldur	w0, [x29, #-28]
	bl	jv_free
	ldr	w0, [sp, #16]
	bl	jv_free
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldr	w8, [x8]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #24]
	bl	bytecode_free
	ldur	x8, [x29, #-16]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	block_compile, .Lfunc_end0-block_compile
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"name"
	.size	.L.str, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_alloc
	.addrsig_sym count_cfunctions
	.addrsig_sym jv_mem_calloc
	.addrsig_sym jv_array
	.addrsig_sym jv_object_set
	.addrsig_sym jv_object
	.addrsig_sym jv_string
	.addrsig_sym jv_null
	.addrsig_sym jv_invalid
	.addrsig_sym compile
	.addrsig_sym jv_free
	.addrsig_sym assert
	.addrsig_sym bytecode_free