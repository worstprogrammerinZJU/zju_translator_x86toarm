	.text
	.globl	block_bind_library              // -- Begin function block_bind_library
	.p2align	2
	.type	block_bind_library,@function
block_bind_library:                     // @block_bind_library
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	stur	x3, [x29, #-40]
	adrp	x8, OP_HAS_BINDING
	ldr	w9, [x8, :lo12:OP_HAS_BINDING]
	ldur	w8, [x29, #-28]
	orr	w8, w8, w9
	stur	w8, [x29, #-28]
	stur	wzr, [x29, #-44]
	ldur	x8, [x29, #-40]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, wzr
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldur	x0, [x29, #-40]
	bl	strlen
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	w8, [sp, #48]
	ldr	w8, [sp, #48]
	add	w8, w8, #2
	add	w0, w8, #1
	bl	jv_mem_alloc
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	strb	wzr, [x8]
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-40]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #40]
	ldur	x1, [x29, #-40]
	bl	strcpy
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #48]
	add	x0, x8, x9
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcpy
	ldr	w8, [sp, #48]
	add	w8, w8, #2
	str	w8, [sp, #48]
	b	.LBB0_6
.LBB0_6:
	ldur	w1, [x29, #-28]
	ldur	x0, [x29, #-16]
	bl	block_has_only_binders
	bl	assert
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_12
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-28]
	str	w8, [sp, #28]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	bl	strlen
	ldr	w8, [sp, #48]
	add	w8, w0, w8
	add	w0, w8, #1
	bl	jv_mem_alloc
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #40]
	bl	strcpy
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #48]
	add	x0, x8, x9
	ldr	x8, [sp, #32]
	ldr	x1, [x8]
	bl	strcpy
	ldr	x8, [sp, #32]
	ldr	w0, [x8, #8]
	bl	opcode_describe
	ldr	w8, [x0]
	adrp	x9, OP_HAS_VARIABLE
	ldr	w9, [x9, :lo12:OP_HAS_VARIABLE]
	adrp	x10, OP_HAS_CONSTANT
	ldr	w10, [x10, :lo12:OP_HAS_CONSTANT]
	orr	w9, w9, w10
	and	w8, w8, w9
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	adrp	x8, OP_HAS_VARIABLE
	ldr	w8, [x8, :lo12:OP_HAS_VARIABLE]
	adrp	x9, OP_HAS_BINDING
	ldr	w9, [x9, :lo12:OP_HAS_BINDING]
	orr	w8, w8, w9
	str	w8, [sp, #28]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #32]
	str	x8, [x9]
	ldr	x0, [sp, #32]
	bl	inst_block
	ldr	w2, [sp, #28]
	ldur	x1, [x29, #-24]
	mov	w3, wzr
	bl	block_bind_subblock
	ldursw	x8, [x29, #-44]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-44]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #32]
	str	x8, [x9]
	ldr	x0, [sp, #8]
	bl	free
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]
	b	.LBB0_7
.LBB0_12:
	ldr	x0, [sp, #40]
	bl	free
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	block_bind_library, .Lfunc_end0-block_bind_library
                                        // -- End function
	.type	OP_HAS_BINDING,@object          // @OP_HAS_BINDING
	.bss
	.globl	OP_HAS_BINDING
	.p2align	2
OP_HAS_BINDING:
	.word	0                               // 0x0
	.size	OP_HAS_BINDING, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"::"
	.size	.L.str, 3
	.type	OP_HAS_VARIABLE,@object         // @OP_HAS_VARIABLE
	.bss
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.word	0                               // 0x0
	.size	OP_HAS_VARIABLE, 4
	.type	OP_HAS_CONSTANT,@object         // @OP_HAS_CONSTANT
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.word	0                               // 0x0
	.size	OP_HAS_CONSTANT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym jv_mem_alloc
	.addrsig_sym strcpy
	.addrsig_sym assert
	.addrsig_sym block_has_only_binders
	.addrsig_sym opcode_describe
	.addrsig_sym block_bind_subblock
	.addrsig_sym inst_block
	.addrsig_sym free
	.addrsig_sym OP_HAS_BINDING
	.addrsig_sym OP_HAS_VARIABLE
	.addrsig_sym OP_HAS_CONSTANT