	.text
	.p2align	2                               // -- Begin function pos_string
	.type	pos_string,@function
pos_string:                             // @pos_string
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	current_file
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	w2, [x8, #4]
	ldur	x8, [x29, #-8]
	ldr	w3, [x8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	format
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	pos_string, .Lfunc_end0-pos_string
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d:%d"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"(unknown)"
	.size	.L.str.1, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pos_string
	.addrsig_sym current_file
	.addrsig_sym format