	.text
	.p2align	2                               // -- Begin function initApbChangeCallback
	.type	initApbChangeCallback,@function
initApbChangeCallback:                  // @initApbChangeCallback
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, initApbChangeCallback.initialized
	ldr	w8, [x8, :lo12:initApbChangeCallback.initialized]
	cbnz	w8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	adrp	x9, initApbChangeCallback.initialized
	str	w8, [x9, :lo12:initApbChangeCallback.initialized]
	bl	xSemaphoreCreateMutex
	adrp	x8, apb_change_lock
	str	w0, [x8, :lo12:apb_change_lock]
	ldr	w8, [x8, :lo12:apb_change_lock]
	cbnz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, initApbChangeCallback.initialized
	str	wzr, [x8, :lo12:initApbChangeCallback.initialized]
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	initApbChangeCallback, .Lfunc_end0-initApbChangeCallback
                                        // -- End function
	.type	initApbChangeCallback.initialized,@object // @initApbChangeCallback.initialized
	.local	initApbChangeCallback.initialized
	.comm	initApbChangeCallback.initialized,4,4
	.type	apb_change_lock,@object         // @apb_change_lock
	.bss
	.globl	apb_change_lock
	.p2align	2
apb_change_lock:
	.word	0                               // 0x0
	.size	apb_change_lock, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym initApbChangeCallback
	.addrsig_sym xSemaphoreCreateMutex
	.addrsig_sym initApbChangeCallback.initialized
	.addrsig_sym apb_change_lock