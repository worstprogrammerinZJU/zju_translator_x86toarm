	.text
	.p2align	2                               // -- Begin function binop_to_string
	.type	binop_to_string,@function
binop_to_string:                        // @binop_to_string
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
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x8, [sp, #24]
	ldr	w0, [x8, #4]
	bl	node2s
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldr	x8, [sp, #24]
	ldr	w0, [x8]
	bl	node2s
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w3, [sp, #12]                   // 4-byte Folded Reload
	mov	w4, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	buf_printf
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	binop_to_string, .Lfunc_end0-binop_to_string
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(%s %s %s)"
	.size	.L.str, 11
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym binop_to_string
	.addrsig_sym buf_printf
	.addrsig_sym node2s