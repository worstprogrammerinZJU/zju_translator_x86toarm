	.text
	.p2align	2                               // -- Begin function die
	.type	die,@function
die:                                    // @die
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	str	x2, [sp, #16]
	adrp	x8, stderr
	ldr	w1, [x8, :lo12:stderr]
	mov	w0, #10
	bl	putc
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	adrp	x8, stderr
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:stderr]
	bl	fputs
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [x8, :lo12:stderr]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	fputs
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-8]
	bl	strerror
	adrp	x8, stderr
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:stderr]
	bl	fputs
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w1, [x8, :lo12:stderr]
	mov	w0, #10
	bl	putc
	ldur	w0, [x29, #-4]
	bl	exit
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	die, .Lfunc_end0-die
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
	.asciz	": "
	.size	.L.str, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym die
	.addrsig_sym putc
	.addrsig_sym fputs
	.addrsig_sym strerror
	.addrsig_sym exit
	.addrsig_sym stderr