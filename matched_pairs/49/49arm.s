	.text
	.globl	testmain                        // -- Begin function testmain
	.p2align	2
	.type	testmain,@function
testmain:                               // @testmain
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	print
	stur	wzr, [x29, #-4]
	ldur	w8, [x29, #-4]
	mov	w0, #5
	str	w0, [sp]                        // 4-byte Folded Spill
	add	w8, w8, #5
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	ldur	w8, [x29, #-4]
	mov	w9, #2
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	subs	w8, w8, #2
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	mov	w0, #3
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	bl	expect
	ldur	w8, [x29, #-4]
	mov	w9, #10
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	mul	w8, w8, w9
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	mov	w0, #30
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	bl	expect
	ldr	w9, [sp, #12]                   // 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	sdiv	w8, w8, w9
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	mov	w0, #15
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	mov	w10, #6
	str	w10, [sp, #24]                  // 4-byte Folded Spill
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	mov	w8, #14
	stur	w8, [x29, #-20]                 // 4-byte Folded Spill
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-4]
	and	w8, w8, #0x7
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	orr	w8, w8, #0x8
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	ldur	w8, [x29, #-4]
	eor	w8, w8, #0x3
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	mov	w0, #13
	stur	w0, [x29, #-12]                 // 4-byte Folded Spill
	bl	expect
	ldur	w8, [x29, #-4]
	lsl	w8, w8, #2
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	mov	w0, #52
	stur	w0, [x29, #-16]                 // 4-byte Folded Spill
	bl	expect
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	asr	w8, w8, #2
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	ldr	w0, [sp]                        // 4-byte Folded Reload
	sturb	wzr, [x29, #-5]
	ldurb	w8, [x29, #-5]
	add	w8, w8, #5
	sturb	w8, [x29, #-5]
	ldurb	w1, [x29, #-5]
	bl	expect
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldurb	w8, [x29, #-5]
	subs	w8, w8, #2
	sturb	w8, [x29, #-5]
	ldurb	w1, [x29, #-5]
	bl	expect
	ldr	w9, [sp, #4]                    // 4-byte Folded Reload
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldurb	w8, [x29, #-5]
	mul	w8, w8, w9
	sturb	w8, [x29, #-5]
	ldurb	w1, [x29, #-5]
	bl	expect
	ldr	w9, [sp, #12]                   // 4-byte Folded Reload
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldurb	w8, [x29, #-5]
	sdiv	w8, w8, w9
	sturb	w8, [x29, #-5]
	ldurb	w1, [x29, #-5]
	bl	expect
	ldr	w10, [sp, #24]                  // 4-byte Folded Reload
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldurb	w8, [x29, #-5]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	sturb	w8, [x29, #-5]
	ldurb	w1, [x29, #-5]
	bl	expect
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	mov	w8, #14
	sturb	w8, [x29, #-5]
	ldurb	w8, [x29, #-5]
	and	w8, w8, #0x7
	sturb	w8, [x29, #-5]
	ldurb	w1, [x29, #-5]
	bl	expect
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	ldurb	w8, [x29, #-5]
	orr	w8, w8, #0x8
	sturb	w8, [x29, #-5]
	ldurb	w1, [x29, #-5]
	bl	expect
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	ldurb	w8, [x29, #-5]
	eor	w8, w8, #0x3
	sturb	w8, [x29, #-5]
	ldurb	w1, [x29, #-5]
	bl	expect
	ldur	w0, [x29, #-16]                 // 4-byte Folded Reload
	ldurb	w8, [x29, #-5]
	lsl	w8, w8, #2
	sturb	w8, [x29, #-5]
	ldurb	w1, [x29, #-5]
	bl	expect
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	ldurb	w8, [x29, #-5]
	asr	w8, w8, #2
	sturb	w8, [x29, #-5]
	ldurb	w1, [x29, #-5]
	bl	expect
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"compound assignment"
	.size	.L.str, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect