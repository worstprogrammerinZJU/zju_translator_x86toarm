	.text
	.globl	testmain                        // -- Begin function testmain
	.p2align	2
	.type	testmain,@function
testmain:                               // @testmain
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	print
	mov	w1, #1
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	mov	w1, wzr
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	mov	w8, #-1
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #0
	cset	w8, ge
	and	w1, w8, #0x1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"comparison operators"
	.size	.L.str, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect