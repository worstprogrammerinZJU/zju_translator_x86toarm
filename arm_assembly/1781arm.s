	.text
	.globl	update_network                  // -- Begin function update_network
	.p2align	2
	.type	update_network,@function
update_network:                         // @update_network
// %bb.0:
	sub	sp, sp, #224
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	sub	x0, x29, #72
	mov	x2, #64
	bl	memcpy
	add	x0, sp, #80
	mov	w1, wzr
	mov	x2, #48
	bl	memset
	ldur	w8, [x29, #-64]
	ldur	w9, [x29, #-60]
	mul	w8, w8, w9
	str	w8, [sp, #80]
	ldur	x0, [x29, #-8]
	bl	get_current_rate
	str	w0, [sp, #120]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #116]
	ldur	w8, [x29, #-16]
	str	w8, [sp, #112]
	ldur	w8, [x29, #-20]
	str	w8, [sp, #108]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #104]
	ldur	w8, [x29, #-28]
	str	w8, [sp, #100]
	ldur	w8, [x29, #-32]
	str	w8, [sp, #96]
	ldur	x9, [x29, #-40]
	ldr	x8, [x9]
	add	x8, x8, #1
	str	x8, [x9]
	ldur	x8, [x29, #-40]
	ldr	x8, [x8]
	str	x8, [sp, #88]
	stur	wzr, [x29, #-76]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-76]
	ldur	w9, [x29, #-56]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-48]
	ldursw	x9, [x29, #-76]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #72]
	ldr	x8, [sp, #72]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #72]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	x8, [sp, #72]
	str	x8, [sp]                        // 8-byte Folded Spill
	add	x0, sp, #24
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	add	x1, sp, #80
	mov	x2, #48
	bl	memcpy
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	blr	x8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-76]
	add	w8, w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_1
.LBB0_6:
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #224
	ret
.Lfunc_end0:
	.size	update_network, .Lfunc_end0-update_network
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_current_rate