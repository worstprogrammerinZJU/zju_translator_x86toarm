	.text
	.globl	make_file                       // -- Begin function make_file
	.p2align	2
	.type	make_file,@function
make_file:                              // @make_file
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	mov	w0, #1
	str	w0, [sp]                        // 4-byte Folded Spill
	mov	w1, #32
	bl	calloc
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	x0, [sp, #8]
	ldur	x9, [x29, #-8]
	ldr	x10, [sp, #8]
	str	x9, [x10, #24]
	ldr	x9, [sp, #16]
	ldr	x10, [sp, #8]
	str	x9, [x10]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldr	x9, [sp, #8]
	str	w8, [x9, #12]
	ldur	x0, [x29, #-8]
	bl	fileno
	add	x1, sp, #4
	bl	fstat
	adds	w8, w0, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, errno
	ldr	w0, [x8, :lo12:errno]
	bl	strerror
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9, #16]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_file, .Lfunc_end0-make_file
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fstat failed: %s"
	.size	.L.str, 17
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fstat
	.addrsig_sym fileno
	.addrsig_sym error
	.addrsig_sym strerror
	.addrsig_sym errno