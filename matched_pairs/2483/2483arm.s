	.text
	.p2align	2                               // -- Begin function mustsend
	.type	mustsend,@function
mustsend:                               // @mustsend
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	strlen
	ldr	x1, [sp]                        // 8-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	writefull
	ldur	w1, [x29, #-4]
	ldr	x2, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	adrp	x8, stdout
	ldr	w0, [x8, :lo12:stdout]
	bl	fflush
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	mustsend, .Lfunc_end0-mustsend
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	">%d %s"
	.size	.L.str, 7
	.type	stdout,@object                  // @stdout
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mustsend
	.addrsig_sym writefull
	.addrsig_sym strlen
	.addrsig_sym printf
	.addrsig_sym fflush
	.addrsig_sym stdout