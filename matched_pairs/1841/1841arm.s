	.text
	.p2align	2                               // -- Begin function mark_location
	.type	mark_location,@function
mark_location:                          // @mark_location
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	peek
	str	x0, [sp, #8]
	mov	w0, #4
	bl	malloc
	adrp	x9, source_loc
	str	x0, [x9, :lo12:source_loc]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	ldr	x10, [x9, :lo12:source_loc]
	str	w8, [x10, #4]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [x9, :lo12:source_loc]
	str	w8, [x9]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	mark_location, .Lfunc_end0-mark_location
                                        // -- End function
	.type	source_loc,@object              // @source_loc
	.bss
	.globl	source_loc
	.p2align	3
source_loc:
	.xword	0
	.size	source_loc, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mark_location
	.addrsig_sym peek
	.addrsig_sym malloc
	.addrsig_sym source_loc