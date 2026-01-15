	.text
	.p2align	2                               // -- Begin function read_warning
	.type	read_warning,@function
read_warning:                           // @read_warning
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
	bl	warnt
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_warning, .Lfunc_end0-read_warning
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"#warning: %s"
	.size	.L.str, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_warning
	.addrsig_sym warnt
	.addrsig_sym read_error_message