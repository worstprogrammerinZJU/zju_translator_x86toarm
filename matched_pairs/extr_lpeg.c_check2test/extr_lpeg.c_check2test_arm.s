	.text
	.p2align	2                               // -- Begin function check2test
	.type	check2test,@function
check2test:                             // @check2test
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	bl	ischeck
	bl	assert
	adrp	x8, ITestAny
	ldr	x8, [x8, :lo12:ITestAny]
	adrp	x9, IAny
	ldr	x9, [x9, :lo12:IAny]
	subs	x10, x8, x9
	ldr	x9, [sp, #8]
	ldrsw	x8, [x9, #4]
	add	x8, x8, x10
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, #4]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	check2test, .Lfunc_end0-check2test
                                        // -- End function
	.type	ITestAny,@object                // @ITestAny
	.bss
	.globl	ITestAny
	.p2align	3
ITestAny:
	.xword	0                               // 0x0
	.size	ITestAny, 8
	.type	IAny,@object                    // @IAny
	.globl	IAny
	.p2align	3
IAny:
	.xword	0                               // 0x0
	.size	IAny, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check2test
	.addrsig_sym assert
	.addrsig_sym ischeck
	.addrsig_sym ITestAny
	.addrsig_sym IAny