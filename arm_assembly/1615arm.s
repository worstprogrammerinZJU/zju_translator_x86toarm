	.text
	.p2align	2                               // -- Begin function repeats
	.type	repeats,@function
repeats:                                // @repeats
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	add	w1, w8, #2
	bl	newpatt
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	add	x3, x8, x9, lsl #2
	mov	w5, wzr
	mov	w4, w5
	bl	verify
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-28]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	w2, #1
	bl	addpatt
	ldr	x8, [sp, #16]
	add	x8, x8, w0, sxtw #2
	str	x8, [sp, #16]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_3
.LBB0_6:
	ldr	x0, [sp, #16]
	mov	x8, x0
	add	x8, x8, #4
	str	x8, [sp, #16]
	adrp	x8, IChoice
	ldr	w1, [x8, :lo12:IChoice]
	ldur	w8, [x29, #-20]
	mov	w9, #1
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	add	w8, w8, #1
	add	w2, w8, #1
	bl	setinst
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	addpatt
	ldr	x8, [sp, #16]
	add	x8, x8, w0, sxtw #2
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	adrp	x8, IPartialCommit
	ldr	w1, [x8, :lo12:IPartialCommit]
	ldur	w9, [x29, #-20]
	mov	w8, wzr
	subs	w2, w8, w9
	bl	setinst
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	repeats, .Lfunc_end0-repeats
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"loop body may accept empty string"
	.size	.L.str, 34
	.type	IChoice,@object                 // @IChoice
	.bss
	.globl	IChoice
	.p2align	2
IChoice:
	.word	0                               // 0x0
	.size	IChoice, 4
	.type	IPartialCommit,@object          // @IPartialCommit
	.globl	IPartialCommit
	.p2align	2
IPartialCommit:
	.word	0                               // 0x0
	.size	IPartialCommit, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym repeats
	.addrsig_sym newpatt
	.addrsig_sym verify
	.addrsig_sym luaL_error
	.addrsig_sym addpatt
	.addrsig_sym setinst
	.addrsig_sym IChoice
	.addrsig_sym IPartialCommit