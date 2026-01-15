	.text
	.p2align	2                               // -- Begin function stbi__loadf_main
	.type	stbi__loadf_main,@function
stbi__loadf_main:                       // @stbi__loadf_main
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	w4, [x29, #-44]
	ldur	x0, [x29, #-16]
	bl	stbi__hdr_test
	cbz	x0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	add	x5, sp, #36
	bl	stbi__hdr_load
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	bl	stbi__float_postprocess
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_10
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	bl	stbi__load_and_postprocess_8bit
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	cbz	x8, .LBB0_9
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-44]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-44]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_7:
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	w3, [sp, #4]                    // 4-byte Folded Reload
	bl	stbi__ldr_to_hdr
	stur	x0, [x29, #-8]
	b	.LBB0_10
.LBB0_9:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	stbi__loadf_main, .Lfunc_end0-stbi__loadf_main
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unknown image type"
	.size	.L.str, 19
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Image not of any known type, or corrupt"
	.size	.L.str.1, 40
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__loadf_main
	.addrsig_sym stbi__hdr_test
	.addrsig_sym stbi__hdr_load
	.addrsig_sym stbi__float_postprocess
	.addrsig_sym stbi__load_and_postprocess_8bit
	.addrsig_sym stbi__ldr_to_hdr
	.addrsig_sym stbi__errpf