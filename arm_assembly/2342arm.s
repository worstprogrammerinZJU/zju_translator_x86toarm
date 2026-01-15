	.text
	.p2align	2                               // -- Begin function bitfield_initializer
	.type	bitfield_initializer,@function
bitfield_initializer:                   // @bitfield_initializer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, inittest
	adrp	x9, inittest
	add	x9, x9, :lo12:inittest
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	ldrb	w1, [x8, :lo12:inittest]
	mov	w0, #2
	stur	w0, [x29, #-12]                 // 4-byte Folded Spill
	bl	expect
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldrb	w1, [x8, #1]
	mov	w0, #4
	stur	w0, [x29, #-8]                  // 4-byte Folded Spill
	bl	expect
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	adrp	x8, .L__const.bitfield_initializer.x
	ldrb	w8, [x8, :lo12:.L__const.bitfield_initializer.x]
	sturb	w8, [x29, #-1]
	ldurb	w8, [x29, #-1]
	and	w1, w8, #0xf
	bl	expect
	ldur	w0, [x29, #-8]                  // 4-byte Folded Reload
	ldurb	w8, [x29, #-1]
	lsr	w1, w8, #4
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	bitfield_initializer, .Lfunc_end0-bitfield_initializer
                                        // -- End function
	.type	inittest,@object                // @inittest
	.bss
	.globl	inittest
inittest:
	.zero	2
	.size	inittest, 2
	.type	.L__const.bitfield_initializer.x,@object // @__const.bitfield_initializer.x
	.section	.rodata,"a",@progbits
.L__const.bitfield_initializer.x:
	.byte	66                              // 0x42
	.size	.L__const.bitfield_initializer.x, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bitfield_initializer
	.addrsig_sym expect
	.addrsig_sym inittest