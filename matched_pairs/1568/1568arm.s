	.text
	.p2align	2                               // -- Begin function emptycap_aux
	.type	emptycap_aux,@function
emptycap_aux:                           // @emptycap_aux
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	x2, [x29, #-24]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	luaL_checkint
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	stur	w0, [x29, #-28]
	ldur	x0, [x29, #-8]
	bl	newpatt
	str	x0, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w10, [x29, #-28]
	mov	w9, wzr
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-28]
	adrp	x9, SHRT_MAX
	ldr	w9, [x9, :lo12:SHRT_MAX]
	subs	w8, w8, w9
	cset	w8, le
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	and	w1, w8, #0x1
	ldur	x3, [x29, #-24]
	mov	w2, #1
	str	w2, [sp]                        // 4-byte Folded Spill
	bl	luaL_argcheck
	ldr	x0, [sp, #24]
	adrp	x8, IEmptyCapture
	ldr	w1, [x8, :lo12:IEmptyCapture]
	ldur	w2, [x29, #-28]
	ldur	w3, [x29, #-12]
	mov	w4, wzr
	bl	setinstcap
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	emptycap_aux, .Lfunc_end0-emptycap_aux
                                        // -- End function
	.type	SHRT_MAX,@object                // @SHRT_MAX
	.bss
	.globl	SHRT_MAX
	.p2align	2
SHRT_MAX:
	.word	0                               // 0x0
	.size	SHRT_MAX, 4
	.type	IEmptyCapture,@object           // @IEmptyCapture
	.globl	IEmptyCapture
	.p2align	2
IEmptyCapture:
	.word	0                               // 0x0
	.size	IEmptyCapture, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emptycap_aux
	.addrsig_sym luaL_checkint
	.addrsig_sym newpatt
	.addrsig_sym luaL_argcheck
	.addrsig_sym setinstcap
	.addrsig_sym SHRT_MAX
	.addrsig_sym IEmptyCapture