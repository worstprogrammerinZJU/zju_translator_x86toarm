	.text
	.p2align	2                               // -- Begin function interfere
	.type	interfere,@function
interfere:                              // @interfere
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	bl	nofail
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, NOINFO
	ldr	x9, [x9, :lo12:NOINFO]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	subs	w8, w8, #128
	b.eq	.LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #129
	b.ne	.LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #4]
	bl	testchar
	stur	w0, [x29, #-4]
	b	.LBB0_9
.LBB0_7:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #20]
	bl	exclusiveset
	subs	w8, w0, #0
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	adrp	x9, ITestAny
	ldr	w9, [x9, :lo12:ITestAny]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	interfere, .Lfunc_end0-interfere
                                        // -- End function
	.type	NOINFO,@object                  // @NOINFO
	.bss
	.globl	NOINFO
	.p2align	3
NOINFO:
	.xword	0                               // 0x0
	.size	NOINFO, 8
	.type	ITestAny,@object                // @ITestAny
	.globl	ITestAny
	.p2align	2
ITestAny:
	.word	0                               // 0x0
	.size	ITestAny, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym interfere
	.addrsig_sym nofail
	.addrsig_sym testchar
	.addrsig_sym exclusiveset
	.addrsig_sym assert
	.addrsig_sym NOINFO
	.addrsig_sym ITestAny