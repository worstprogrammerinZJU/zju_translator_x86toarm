	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w8, wzr
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	bl	test_buf
	bl	test_list
	bl	test_map
	bl	test_map_stack
	bl	test_dict
	bl	test_set
	bl	test_path
	bl	test_file
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Passed\n"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_buf
	.addrsig_sym test_list
	.addrsig_sym test_map
	.addrsig_sym test_map_stack
	.addrsig_sym test_dict
	.addrsig_sym test_set
	.addrsig_sym test_path
	.addrsig_sym test_file
	.addrsig_sym printf