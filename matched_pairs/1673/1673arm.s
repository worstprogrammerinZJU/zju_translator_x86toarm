	.text
	.p2align	2                               // -- Begin function replace_suffix
	.type	replace_suffix,@function
replace_suffix:                         // @replace_suffix
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x1, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	format
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	strlen
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, w0, sxtw
	subs	x8, x8, #1
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	subs	w8, w8, #99
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	error
	b	.LBB0_2
.LBB0_2:
	ldurb	w8, [x29, #-9]
	ldr	x9, [sp, #16]
	strb	w8, [x9]
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	replace_suffix, .Lfunc_end0-replace_suffix
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"filename suffix is not .c"
	.size	.L.str.1, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym replace_suffix
	.addrsig_sym format
	.addrsig_sym strlen
	.addrsig_sym error