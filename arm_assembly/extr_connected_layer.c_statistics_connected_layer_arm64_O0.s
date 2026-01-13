	.text
	.globl	statistics_connected_layer      // -- Begin function statistics_connected_layer
	.p2align	2
	.type	statistics_connected_layer,@function
statistics_connected_layer:             // @statistics_connected_layer
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [x0, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #12]
	ldr	w1, [x8]
	bl	print_statistics
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #8]
	ldr	w1, [x8]
	bl	print_statistics
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #4]
	ldr	w1, [x8]
	bl	print_statistics
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	statistics_connected_layer, .Lfunc_end0-statistics_connected_layer
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Scales "
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Biases "
	.size	.L.str.1, 8
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"Weights "
	.size	.L.str.2, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym print_statistics