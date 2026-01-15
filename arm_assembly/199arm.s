	.text
	.p2align	2                               // -- Begin function gen_builtin_list
	.type	gen_builtin_list,@function
gen_builtin_list:                       // @gen_builtin_list
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	mov	w1, #1
	bl	block_list_funcs
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_array_append
	stur	w0, [x29, #-8]
	ldur	w8, [x29, #-4]
	stur	w8, [x29, #-12]                 // 4-byte Folded Spill
	bl	gen_noop
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	gen_const
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w2, w0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	gen_function
	mov	w1, w0
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	bl	BLOCK
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_builtin_list, .Lfunc_end0-gen_builtin_list
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"builtins/0"
	.size	.L.str, 11
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"builtins"
	.size	.L.str.1, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_builtin_list
	.addrsig_sym jv_array_append
	.addrsig_sym block_list_funcs
	.addrsig_sym jv_string
	.addrsig_sym BLOCK
	.addrsig_sym gen_function
	.addrsig_sym gen_noop
	.addrsig_sym gen_const