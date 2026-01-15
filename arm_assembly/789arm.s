	.text
	.globl	sigmaDeltaSetup                 // -- Begin function sigmaDeltaSetup
	.p2align	2
	.type	sigmaDeltaSetup,@function
sigmaDeltaSetup:                        // @sigmaDeltaSetup
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, SIGMADELTA
	add	x8, x8, :lo12:SIGMADELTA
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #7
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_2:
	adrp	x8, sigmaDeltaSetup.tHasStarted
	ldr	w8, [x8, :lo12:sigmaDeltaSetup.tHasStarted]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	adrp	x9, sigmaDeltaSetup.tHasStarted
	str	w8, [x9, :lo12:sigmaDeltaSetup.tHasStarted]
	bl	xSemaphoreCreateMutex
	adrp	x8, _sd_sys_lock
	str	w0, [x8, :lo12:_sd_sys_lock]
	b	.LBB0_4
.LBB0_4:
	bl	getApbFrequency
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	lsl	w9, w9, #8
	sdiv	w8, w8, w9
	subs	w8, w8, #1
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #255
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #255
	str	w8, [sp, #12]
	b	.LBB0_6
.LBB0_6:
	bl	SD_MUTEX_LOCK
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #12]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-8]
	str	w8, [x9, x10, lsl #2]
	adrp	x9, SIGMADELTA
	str	wzr, [x9, :lo12:SIGMADELTA]
	mov	w8, #1
	str	w8, [x9, :lo12:SIGMADELTA]
	bl	SD_MUTEX_UNLOCK
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]
	ldrsw	x0, [sp, #8]
	adrp	x8, _on_apb_change
	ldr	w1, [x8, :lo12:_on_apb_change]
	bl	addApbChangeCallback
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #12]
	add	w9, w9, #1
	lsl	w9, w9, #8
	sdiv	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	sigmaDeltaSetup, .Lfunc_end0-sigmaDeltaSetup
                                        // -- End function
	.type	sigmaDeltaSetup.tHasStarted,@object // @sigmaDeltaSetup.tHasStarted
	.local	sigmaDeltaSetup.tHasStarted
	.comm	sigmaDeltaSetup.tHasStarted,4,4
	.type	_sd_sys_lock,@object            // @_sd_sys_lock
	.bss
	.globl	_sd_sys_lock
	.p2align	2
_sd_sys_lock:
	.word	0                               // 0x0
	.size	_sd_sys_lock, 4
	.type	SIGMADELTA,@object              // @SIGMADELTA
	.globl	SIGMADELTA
	.p2align	3
SIGMADELTA:
	.zero	16
	.size	SIGMADELTA, 16
	.type	_on_apb_change,@object          // @_on_apb_change
	.globl	_on_apb_change
	.p2align	2
_on_apb_change:
	.word	0                               // 0x0
	.size	_on_apb_change, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xSemaphoreCreateMutex
	.addrsig_sym getApbFrequency
	.addrsig_sym SD_MUTEX_LOCK
	.addrsig_sym SD_MUTEX_UNLOCK
	.addrsig_sym addApbChangeCallback
	.addrsig_sym sigmaDeltaSetup.tHasStarted
	.addrsig_sym _sd_sys_lock
	.addrsig_sym SIGMADELTA
	.addrsig_sym _on_apb_change