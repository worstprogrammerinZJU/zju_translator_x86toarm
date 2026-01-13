	.text
	.p2align	2                               // -- Begin function uop_to_string
	.type	uop_to_string,@function
uop_to_string:                          // @uop_to_string
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [sp, #24]
	ldr	w0, [x8]
	bl	node2s
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	mov	w3, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	buf_printf
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	uop_to_string, .Lfunc_end0-uop_to_string
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(%s %s)"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uop_to_string
	.addrsig_sym buf_printf
	.addrsig_sym node2s