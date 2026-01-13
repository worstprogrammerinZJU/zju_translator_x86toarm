	.text
	.p2align	2                               // -- Begin function read_error
	.type	read_error,@function
read_error:                             // @read_error
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        // 8-byte Folded Spill
	bl	read_error_message
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_error, .Lfunc_end0-read_error
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"#error: %s"
	.size	.L.str, 11
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_error
	.addrsig_sym errort
	.addrsig_sym read_error_message