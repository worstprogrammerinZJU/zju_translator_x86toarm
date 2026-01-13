	.text
	.p2align	2                               // -- Begin function ckresp
	.type	ckresp,@function
ckresp:                                 // @ckresp
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldur	w0, [x29, #-4]
	bl	readline
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	strcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	assertf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	ckresp, .Lfunc_end0-ckresp
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\"%s\" != \"%s\""
	.size	.L.str, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ckresp
	.addrsig_sym readline
	.addrsig_sym assertf
	.addrsig_sym strcmp