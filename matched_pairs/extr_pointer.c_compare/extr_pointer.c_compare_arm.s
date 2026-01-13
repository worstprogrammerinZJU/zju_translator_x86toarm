	.text
	.p2align	2                               // -- Begin function compare
	.type	compare,@function
compare:                                // @compare
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	add	x9, x9, #1
	subs	x8, x8, x9
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	and	w1, w8, #0x1
	mov	w0, wzr
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, ne
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	add	x9, x9, #1
	subs	x8, x8, x9
	cset	w8, ne
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, lo
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	add	x9, x9, #1
	subs	x8, x8, x9
	cset	w8, lo
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, hi
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, hi
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, hs
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, hs
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	add	x9, x9, #1
	subs	x8, x8, x9
	cset	w8, hs
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, ls
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	add	x9, x9, #1
	subs	x8, x8, x9
	cset	w8, ls
	and	w1, w8, #0x1
	bl	expect
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, ls
	and	w1, w8, #0x1
	bl	expect
	mov	w1, #4
	stur	w1, [x29, #-12]                 // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	compare, .Lfunc_end0-compare
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abcdefg"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym compare
	.addrsig_sym expect