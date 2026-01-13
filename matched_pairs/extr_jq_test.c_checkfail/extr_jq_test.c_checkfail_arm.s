	.text
	.p2align	2                               // -- Begin function checkfail
	.type	checkfail,@function
checkfail:                              // @checkfail
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	mov	w8, #1
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	subs	x8, x0, #0
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	checkfail, .Lfunc_end0-checkfail
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%%FAIL\n"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%%FAIL IGNORE MSG\n"
	.size	.L.str.1, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym checkfail
	.addrsig_sym strcmp