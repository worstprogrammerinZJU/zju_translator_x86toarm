	.text
	.globl	demo                            // -- Begin function demo
	.p2align	2
	.type	demo,@function
demo:                                   // @demo
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	ldr	w12, [x29, #16]
	ldr	w11, [x29, #24]
	ldr	w10, [x29, #32]
	ldr	w9, [x29, #40]
	ldr	w8, [x29, #48]
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	s0, [x29, #-20]
	stur	w2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	w5, [sp, #36]
	str	w6, [sp, #32]
	str	x7, [sp, #24]
	str	w12, [sp, #20]
	str	s1, [sp, #16]
	str	w11, [sp, #12]
	str	w10, [sp, #8]
	str	w9, [sp, #4]
	str	w8, [sp]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	demo, .Lfunc_end0-demo
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Demo needs OpenCV for webcam images.\n"
	.size	.L.str, 38
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym stderr