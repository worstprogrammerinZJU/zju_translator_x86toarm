	.text
	.globl	block_list_funcs                // -- Begin function block_list_funcs
	.p2align	2
	.type	block_list_funcs,@function
block_list_funcs:                       // @block_list_funcs
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	bl	jv_object
	str	w0, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_11
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_CREATE
	ldr	x9, [x9, :lo12:CLOSURE_CREATE]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_CREATE_C
	ldr	x9, [x9, :lo12:CLOSURE_CREATE_C]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_8
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldrb	w8, [x8]
	subs	w8, w8, #95
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	w2, [x8, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string_fmt
	str	w0, [sp]                        // 4-byte Folded Spill
	bl	jv_null
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_object_set
	str	w0, [sp, #16]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_11:
	ldr	w0, [sp, #16]
	bl	jv_keys_unsorted
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	block_list_funcs, .Lfunc_end0-block_list_funcs
                                        // -- End function
	.type	CLOSURE_CREATE,@object          // @CLOSURE_CREATE
	.bss
	.globl	CLOSURE_CREATE
	.p2align	3
CLOSURE_CREATE:
	.xword	0                               // 0x0
	.size	CLOSURE_CREATE, 8
	.type	CLOSURE_CREATE_C,@object        // @CLOSURE_CREATE_C
	.globl	CLOSURE_CREATE_C
	.p2align	3
CLOSURE_CREATE_C:
	.xword	0                               // 0x0
	.size	CLOSURE_CREATE_C, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/%i"
	.size	.L.str, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_object
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_null
	.addrsig_sym jv_keys_unsorted
	.addrsig_sym CLOSURE_CREATE
	.addrsig_sym CLOSURE_CREATE_C