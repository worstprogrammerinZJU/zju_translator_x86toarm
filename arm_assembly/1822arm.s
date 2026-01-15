	.text
	.p2align	2                               // -- Begin function expect
	.type	expect,@function
expect:                                 // @expect
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	sturb	w0, [x29, #-1]
	bl	get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldurb	w1, [x29, #-1]
	bl	is_keyword
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldurb	w8, [x29, #-1]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	tok2s
	ldr	w2, [sp, #4]                    // 4-byte Folded Reload
	mov	w3, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	expect, .Lfunc_end0-expect
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"'%c' expected, but got %s"
	.size	.L.str, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym expect
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym errort
	.addrsig_sym tok2s