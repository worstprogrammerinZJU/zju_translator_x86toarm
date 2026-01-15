	.text
	.globl	fileinit                        // -- Begin function fileinit
	.p2align	2
	.type	fileinit,@function
fileinit:                               // @fileinit
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	w1, [x8]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	fmtalloc
	ldur	x8, [x29, #-8]
	str	w0, [x8, #4]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	subs	w8, w8, #0
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	fileinit, .Lfunc_end0-fileinit
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/binlog.%d"
	.size	.L.str, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmtalloc