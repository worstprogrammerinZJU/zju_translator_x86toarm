	.text
	.p2align	2                               // -- Begin function triggerApbChangeCallback
	.type	triggerApbChangeCallback,@function
triggerApbChangeCallback:               // @triggerApbChangeCallback
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	bl	initApbChangeCallback
	adrp	x8, apb_change_lock
	ldr	w0, [x8, :lo12:apb_change_lock]
	adrp	x8, portMAX_DELAY
	ldr	w1, [x8, :lo12:portMAX_DELAY]
	bl	xSemaphoreTake
	adrp	x8, apb_change_callbacks
	ldr	x8, [x8, :lo12:apb_change_callbacks]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	w0, [x9, #8]
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-8]
	ldur	w3, [x29, #-12]
	blr	x8
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_3:
	adrp	x8, apb_change_lock
	ldr	w0, [x8, :lo12:apb_change_lock]
	bl	xSemaphoreGive
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	triggerApbChangeCallback, .Lfunc_end0-triggerApbChangeCallback
                                        // -- End function
	.type	apb_change_lock,@object         // @apb_change_lock
	.bss
	.globl	apb_change_lock
	.p2align	2
apb_change_lock:
	.word	0                               // 0x0
	.size	apb_change_lock, 4
	.type	portMAX_DELAY,@object           // @portMAX_DELAY
	.globl	portMAX_DELAY
	.p2align	2
portMAX_DELAY:
	.word	0                               // 0x0
	.size	portMAX_DELAY, 4
	.type	apb_change_callbacks,@object    // @apb_change_callbacks
	.globl	apb_change_callbacks
	.p2align	3
apb_change_callbacks:
	.xword	0
	.size	apb_change_callbacks, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym triggerApbChangeCallback
	.addrsig_sym initApbChangeCallback
	.addrsig_sym xSemaphoreTake
	.addrsig_sym xSemaphoreGive
	.addrsig_sym apb_change_lock
	.addrsig_sym portMAX_DELAY
	.addrsig_sym apb_change_callbacks