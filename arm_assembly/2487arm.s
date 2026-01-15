	.text
	.globl	cttest_allocf                   // -- Begin function cttest_allocf
	.p2align	2
	.type	cttest_allocf,@function
cttest_allocf:                          // @cttest_allocf
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, #5
	bl	fmtalloc
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	strcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	ldr	x2, [sp, #8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	assertf
	ldr	x0, [sp, #8]
	bl	free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_allocf, .Lfunc_end0-cttest_allocf
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hello, %s %d"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"world"
	.size	.L.str.1, 6
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"hello, world 5"
	.size	.L.str.2, 15
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"got \"%s\""
	.size	.L.str.3, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmtalloc
	.addrsig_sym assertf
	.addrsig_sym strcmp
	.addrsig_sym free