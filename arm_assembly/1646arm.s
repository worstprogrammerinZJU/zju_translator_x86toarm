	.text
	.globl	update_lstm_layer               // -- Begin function update_lstm_layer
	.p2align	2
	.type	update_lstm_layer,@function
update_lstm_layer:                      // @update_lstm_layer
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]                        // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	ldr	x8, [x0, #56]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_connected_layer
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x0, #48]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_connected_layer
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x0, #40]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_connected_layer
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x0, #32]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_connected_layer
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x0, #24]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_connected_layer
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x0, #16]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_connected_layer
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x0, #8]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_connected_layer
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_connected_layer
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	update_lstm_layer, .Lfunc_end0-update_lstm_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym update_connected_layer