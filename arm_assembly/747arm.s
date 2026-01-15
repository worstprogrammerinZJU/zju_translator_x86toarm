	.text
	.globl	token_pos                       // -- Begin function token_pos
	.p2align	2
	.type	token_pos,@function
token_pos:                              // @token_pos
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	b	.LBB0_6
.LBB0_2:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #4]
	ldur	x8, [x29, #-16]
	ldr	w3, [x8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	format
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	token_pos, .Lfunc_end0-token_pos
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(unknown)"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s:%d:%d"
	.size	.L.str.1, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym format