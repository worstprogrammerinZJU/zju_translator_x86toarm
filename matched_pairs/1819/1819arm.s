	.text
	.p2align	2                               // -- Begin function ensure_lvalue
	.type	ensure_lvalue,@function
ensure_lvalue:                          // @ensure_lvalue
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #128
	subs	w8, w8, #3
	b.hi	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	node2s
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ensure_lvalue, .Lfunc_end0-ensure_lvalue
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lvalue expected, but got %s"
	.size	.L.str, 28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_lvalue
	.addrsig_sym error
	.addrsig_sym node2s