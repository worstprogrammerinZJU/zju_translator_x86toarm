	.text
	.p2align	2                               // -- Begin function get_caller_list
	.type	get_caller_list,@function
get_caller_list:                        // @get_caller_list
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	make_buffer
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	adrp	x8, functions
	ldr	w0, [x8, :lo12:functions]
	bl	vec_len
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	buf_printf
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x8, functions
	ldr	w0, [x8, :lo12:functions]
	ldur	w1, [x29, #-12]
	bl	vec_get
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	buf_printf
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_6:
	ldur	x0, [x29, #-8]
	mov	w1, wzr
	bl	buf_write
	ldur	x0, [x29, #-8]
	bl	buf_body
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_caller_list, .Lfunc_end0-get_caller_list
                                        // -- End function
	.type	functions,@object               // @functions
	.bss
	.globl	functions
	.p2align	2
functions:
	.word	0                               // 0x0
	.size	functions, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" -> "
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_caller_list
	.addrsig_sym make_buffer
	.addrsig_sym vec_len
	.addrsig_sym buf_printf
	.addrsig_sym vec_get
	.addrsig_sym buf_write
	.addrsig_sym buf_body
	.addrsig_sym functions