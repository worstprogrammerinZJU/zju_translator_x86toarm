	.text
	.globl	print_statistics                // -- Begin function print_statistics
	.p2align	2
	.type	print_statistics,@function
print_statistics:                       // @print_statistics
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	mean_array
	str	s0, [sp, #16]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	variance_array
	str	s0, [sp, #12]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	mse_array
	ldr	s1, [sp, #16]
	ldr	s2, [sp, #12]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	print_statistics, .Lfunc_end0-print_statistics
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MSE: %.6f, Mean: %.6f, Variance: %.6f\n"
	.size	.L.str, 39
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mean_array
	.addrsig_sym variance_array
	.addrsig_sym printf
	.addrsig_sym mse_array