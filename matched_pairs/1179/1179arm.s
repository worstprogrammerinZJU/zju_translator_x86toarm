	.text
	.globl	testmain                        // -- Begin function testmain
	.p2align	2
	.type	testmain,@function
testmain:                               // @testmain
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	print
	mov	w8, #10
	sturh	w8, [x29, #-2]
	mov	w8, #15
	sturh	w8, [x29, #-4]
	ldursh	w8, [x29, #-2]
	ldursh	w9, [x29, #-4]
	add	w1, w8, w9
	mov	w0, #25
	bl	expects
	ldursh	w8, [x29, #-2]
	mov	w9, #10
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	add	w1, w8, #10
	mov	w0, #20
	bl	expects
	mov	x8, #67
	str	x8, [sp, #16]
	mov	x8, #69
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	mov	w1, w8
	mov	w0, #67
	bl	expectl
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	add	x8, x8, x9
	mov	w1, w8
	mov	w0, #136
	bl	expectl
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expectl
	mov	w1, #-1
	mov	w0, w1
	bl	expectl
	mov	w1, wzr
	mov	w0, w1
	bl	expectl
	mov	w1, #1
	mov	w0, w1
	bl	expectl
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"long"
	.size	.L.str, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expects
	.addrsig_sym expectl