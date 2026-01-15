	.text
	.p2align	2                               // -- Begin function emit_je
	.type	emit_je,@function
emit_je:                                // @emit_je
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	ldr	x1, [sp, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_je, .Lfunc_end0-emit_je
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"test #rax, #rax"
	.size	.L.str, 16
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"je %s"
	.size	.L.str.1, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_je
	.addrsig_sym emit