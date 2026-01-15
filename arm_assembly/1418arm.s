	.text
	.p2align	2                               // -- Begin function make_token
	.type	make_token,@function
make_token:                             // @make_token
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x8, pos
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, pos
	add	x8, x8, :lo12:pos
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	mov	w0, #32
	bl	malloc
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	q0, [x9]
	str	q0, [x8]
	ldr	q0, [x9, #16]
	str	q0, [x8, #16]
	ldur	x8, [x29, #-16]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #24]
	bl	current_file
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x10, [sp, #24]
	ldur	x11, [x29, #-16]
	str	x10, [x11, #16]
	ldr	w9, [x9, #4]
	ldur	x10, [x29, #-16]
	str	w9, [x10, #12]
	ldr	w8, [x8, :lo12:pos]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #8]
	ldr	x10, [sp, #24]
	ldrsw	x8, [x10]
	mov	w9, w8
	add	w9, w9, #1
	str	w9, [x10]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_token, .Lfunc_end0-make_token
                                        // -- End function
	.type	pos,@object                     // @pos
	.bss
	.globl	pos
	.p2align	2
pos:
	.zero	8
	.size	pos, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_token
	.addrsig_sym malloc
	.addrsig_sym current_file
	.addrsig_sym pos