	.text
	.p2align	2                               // -- Begin function is_arithtype
	.type	is_arithtype,@function
is_arithtype:                           // @is_arithtype
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	is_inttype
	mov	w8, #1
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	is_flotype
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	is_arithtype, .Lfunc_end0-is_arithtype
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_arithtype
	.addrsig_sym is_inttype
	.addrsig_sym is_flotype