	.text
	.p2align	2                               // -- Begin function vwarnx
	.type	vwarnx,@function
vwarnx:                                 // @vwarnx
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x8, progname
	ldr	x2, [x8, :lo12:progname]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #12]
	bl	vfprintf
	ldur	x8, [x29, #-8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	x2, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fprintf
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:
	adrp	x8, stderr
	ldr	w1, [x8, :lo12:stderr]
	mov	w0, #10
	bl	fputc
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	vwarnx, .Lfunc_end0-vwarnx
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: "
	.size	.L.str, 5
	.type	progname,@object                // @progname
	.bss
	.globl	progname
	.p2align	3
progname:
	.xword	0
	.size	progname, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	": %s"
	.size	.L.str.1, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vwarnx
	.addrsig_sym fprintf
	.addrsig_sym vfprintf
	.addrsig_sym fputc
	.addrsig_sym stderr
	.addrsig_sym progname