	.text
	.p2align	2                               // -- Begin function fprinter
	.type	fprinter,@function
fprinter:                               // @fprinter
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        // 8-byte Folded Spill
	adrp	x8, errno
	ldr	w0, [x8, :lo12:errno]
	bl	strerror
	ldr	x2, [sp]                        // 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	fprinter, .Lfunc_end0-fprinter
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq: error: Could not open file %s: %s\n"
	.size	.L.str, 39
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprinter
	.addrsig_sym fprintf
	.addrsig_sym strerror
	.addrsig_sym errno