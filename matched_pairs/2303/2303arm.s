	.text
	.p2align	2                               // -- Begin function stbi__zexpand
	.type	stbi__zexpand,@function
stbi__zexpand:                          // @stbi__zexpand
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #24]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_8
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	mov	w9, w8
	str	w9, [sp, #12]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-28]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #16]
	lsl	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_3
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	ldr	w1, [sp, #12]
	ldr	w2, [sp, #16]
	bl	STBI_REALLOC_SIZED
	str	x0, [sp, #24]
	ldr	w0, [sp, #12]
	bl	STBI_NOTUSED
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_8
.LBB0_7:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	add	x8, x8, x9
	ldur	x9, [x29, #-16]
	str	x8, [x9, #16]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__zexpand, .Lfunc_end0-stbi__zexpand
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"output buffer limit"
	.size	.L.str, 20
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt PNG"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"outofmem"
	.size	.L.str.2, 9
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Out of memory"
	.size	.L.str.3, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__zexpand
	.addrsig_sym stbi__err
	.addrsig_sym STBI_REALLOC_SIZED
	.addrsig_sym STBI_NOTUSED