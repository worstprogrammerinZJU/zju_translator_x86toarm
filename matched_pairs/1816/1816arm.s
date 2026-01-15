	.text
	.p2align	2                               // -- Begin function ensure_arithtype
	.type	ensure_arithtype,@function
ensure_arithtype:                       // @ensure_arithtype
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	is_arithtype
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	node2s
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ensure_arithtype, .Lfunc_end0-ensure_arithtype
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"arithmetic type expected, but got %s"
	.size	.L.str, 37
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_arithtype
	.addrsig_sym is_arithtype
	.addrsig_sym error
	.addrsig_sym node2s