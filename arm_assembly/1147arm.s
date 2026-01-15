	.text
	.globl	test_resize                     // -- Begin function test_resize
	.p2align	2
	.type	test_resize,@function
test_resize:                            // @test_resize
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w2, wzr
	mov	w1, w2
	mov	w3, #3
	bl	load_image
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-16]
	ldur	w0, [x29, #-12]
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w1, w8, w9
	bl	mag_array
	stur	s0, [x29, #-28]
	ldur	s0, [x29, #-28]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	grayscale_image
	stur	x0, [x29, #-44]
	stur	x1, [x29, #-36]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	copy_image
	stur	x0, [x29, #-60]
	stur	x1, [x29, #-52]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	copy_image
	stur	x0, [sp, #52]
	stur	x1, [sp, #60]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	copy_image
	stur	x0, [sp, #36]
	stur	x1, [sp, #44]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	copy_image
	stur	x0, [sp, #20]
	stur	x1, [sp, #28]
	ldur	x0, [x29, #-60]
	ldur	x1, [x29, #-52]
	mov	w8, #52429
	movk	w8, #15820, lsl #16
	fmov	s0, w8
	str	s0, [sp, #4]                    // 4-byte Folded Spill
	fmov	s2, #1.50000000
	str	s2, [sp, #12]                   // 4-byte Folded Spill
	fmov	s1, s2
	bl	distort_image
	ldur	x0, [sp, #52]
	ldur	x1, [sp, #60]
	mov	w8, #52429
	movk	w8, #48588, lsl #16
	fmov	s0, w8
	mov	w8, #43579
	movk	w8, #16170, lsl #16
	fmov	s2, w8
	str	s2, [sp, #8]                    // 4-byte Folded Spill
	fmov	s1, s2
	bl	distort_image
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	ldr	s2, [sp, #8]                    // 4-byte Folded Reload
	ldr	s1, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [sp, #36]
	ldur	x1, [sp, #44]
	bl	distort_image
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	ldr	s1, [sp, #8]                    // 4-byte Folded Reload
	ldr	s2, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [sp, #20]
	ldur	x1, [sp, #28]
	bl	distort_image
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	mov	w3, #1
	str	w3, [sp, #16]                   // 4-byte Folded Spill
	bl	show_image
	ldr	w3, [sp, #16]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-44]
	ldur	x1, [x29, #-36]
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	show_image
	ldr	w3, [sp, #16]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-60]
	ldur	x1, [x29, #-52]
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	bl	show_image
	ldr	w3, [sp, #16]                   // 4-byte Folded Reload
	ldur	x0, [sp, #52]
	ldur	x1, [sp, #60]
	adrp	x2, .L.str.4
	add	x2, x2, :lo12:.L.str.4
	bl	show_image
	ldr	w3, [sp, #16]                   // 4-byte Folded Reload
	ldur	x0, [sp, #36]
	ldur	x1, [sp, #44]
	adrp	x2, .L.str.5
	add	x2, x2, :lo12:.L.str.5
	bl	show_image
	ldr	w3, [sp, #16]                   // 4-byte Folded Reload
	ldur	x0, [sp, #20]
	ldur	x1, [sp, #28]
	adrp	x2, .L.str.6
	add	x2, x2, :lo12:.L.str.6
	bl	show_image
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	test_resize, .Lfunc_end0-test_resize
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"L2 Norm: %f\n"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Original"
	.size	.L.str.1, 9
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"Gray"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"C1"
	.size	.L.str.3, 3
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"C2"
	.size	.L.str.4, 3
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"C3"
	.size	.L.str.5, 3
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"C4"
	.size	.L.str.6, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_image
	.addrsig_sym mag_array
	.addrsig_sym printf
	.addrsig_sym grayscale_image
	.addrsig_sym copy_image
	.addrsig_sym distort_image
	.addrsig_sym show_image