	.text
	.globl	xTaskCreateUniversal            // -- Begin function xTaskCreateUniversal
	.p2align	2
	.type	xTaskCreateUniversal,@function
xTaskCreateUniversal:                   // @xTaskCreateUniversal
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	x3, [sp, #32]
	str	w4, [sp, #28]
	str	x5, [sp, #16]
	str	w6, [sp, #12]
	ldr	w8, [sp, #12]
	tbnz	w8, #31, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	subs	w8, w8, #2
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldr	x3, [sp, #32]
	ldr	w4, [sp, #28]
	ldr	x5, [sp, #16]
	ldr	w6, [sp, #12]
	bl	xTaskCreatePinnedToCore
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	ldur	w0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldr	x3, [sp, #32]
	ldr	w4, [sp, #28]
	ldr	x5, [sp, #16]
	bl	xTaskCreate
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	xTaskCreateUniversal, .Lfunc_end0-xTaskCreateUniversal
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xTaskCreatePinnedToCore
	.addrsig_sym xTaskCreate