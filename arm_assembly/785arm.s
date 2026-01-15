	.text
	.p2align	2                               // -- Begin function _on_apb_change
	.type	_on_apb_change,@function
_on_apb_change:                         // @_on_apb_change
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	adrp	x8, SIGMADELTA
	add	x8, x8, :lo12:SIGMADELTA
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_5
.LBB0_2:
	ldur	x8, [x29, #-8]
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-28]
	ldursw	x8, [x29, #-28]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	adrp	x9, APB_BEFORE_CHANGE
	ldr	x9, [x9, :lo12:APB_BEFORE_CHANGE]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, SIGMADELTA
	str	wzr, [x8, :lo12:SIGMADELTA]
	b	.LBB0_5
.LBB0_4:
	ldur	w8, [x29, #-20]
	mov	w9, #16960
	movk	w9, #15, lsl #16
	sdiv	w8, w8, w9
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-24]
	sdiv	w8, w8, w9
	stur	w8, [x29, #-24]
	bl	SD_MUTEX_LOCK
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x8, [x10, #8]
	ldr	x9, [sp, #24]
	ldr	w9, [x8, x9, lsl #2]
	mov	w8, #1
	add	w9, w9, #1
	str	w9, [sp, #20]
	ldur	w9, [x29, #-24]
	ldr	w11, [sp, #20]
	mul	w9, w9, w11
	ldur	w11, [x29, #-20]
	sdiv	w9, w9, w11
	subs	w9, w9, #1
	ldr	x10, [x10, #8]
	ldr	x11, [sp, #24]
	str	w9, [x10, x11, lsl #2]
	adrp	x9, SIGMADELTA
	str	wzr, [x9, :lo12:SIGMADELTA]
	str	w8, [x9, :lo12:SIGMADELTA]
	bl	SD_MUTEX_UNLOCK
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	_on_apb_change, .Lfunc_end0-_on_apb_change
                                        // -- End function
	.type	APB_BEFORE_CHANGE,@object       // @APB_BEFORE_CHANGE
	.bss
	.globl	APB_BEFORE_CHANGE
	.p2align	3
APB_BEFORE_CHANGE:
	.xword	0                               // 0x0
	.size	APB_BEFORE_CHANGE, 8
	.type	SIGMADELTA,@object              // @SIGMADELTA
	.globl	SIGMADELTA
	.p2align	3
SIGMADELTA:
	.zero	16
	.size	SIGMADELTA, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _on_apb_change
	.addrsig_sym SD_MUTEX_LOCK
	.addrsig_sym SD_MUTEX_UNLOCK
	.addrsig_sym APB_BEFORE_CHANGE
	.addrsig_sym SIGMADELTA