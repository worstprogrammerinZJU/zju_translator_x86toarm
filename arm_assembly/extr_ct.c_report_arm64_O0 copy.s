	.text
	.p2align	2                               // -- Begin function report
	.type	report,@function
report:                                 // @report
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	str	wzr, [sp, #16]
	mov	w0, #10
	bl	putchar
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_13
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #16]
	bl	rmtree
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #12]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x1, [x8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	bl	failed
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	b	.LBB0_11
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	bl	WIFEXITED
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	bl	WEXITSTATUS
	mov	w1, w0
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	bl	WIFSIGNALED
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	bl	WTERMSIG
	mov	w1, w0
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #10
	bl	putchar
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	adrp	x8, SEEK_SET
	ldr	w2, [x8, :lo12:SEEK_SET]
	mov	w1, wzr
	bl	lseek
	adrp	x8, stdout
	ldr	w0, [x8, :lo12:stdout]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #8]
	bl	copyfd
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	add	x8, x8, #32
	stur	x8, [x29, #-8]
	b	.LBB0_1
.LBB0_13:
	ldur	w8, [x29, #-12]
	cbnz	w8, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	w1, [x29, #-12]
	ldr	w2, [sp, #16]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	printf
	b	.LBB0_17
.LBB0_16:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	printf
	b	.LBB0_17
.LBB0_17:
	ldur	w8, [x29, #-12]
	mov	w9, #1
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbnz	w8, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_19
.LBB0_19:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	report, .Lfunc_end0-report
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n%s: "
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"failure"
	.size	.L.str.1, 8
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"error"
	.size	.L.str.2, 6
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	" (exit status %d)"
	.size	.L.str.3, 18
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	" (signal %d)"
	.size	.L.str.4, 13
	.type	SEEK_SET,@object                // @SEEK_SET
	.bss
	.globl	SEEK_SET
	.p2align	2
SEEK_SET:
	.word	0                               // 0x0
	.size	SEEK_SET, 4
	.type	stdout,@object                  // @stdout
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"\n%d failures; %d errors.\n"
	.size	.L.str.5, 26
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\nPASS\n"
	.size	.L.str.6, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym report
	.addrsig_sym putchar
	.addrsig_sym rmtree
	.addrsig_sym printf
	.addrsig_sym failed
	.addrsig_sym WIFEXITED
	.addrsig_sym WEXITSTATUS
	.addrsig_sym WIFSIGNALED
	.addrsig_sym WTERMSIG
	.addrsig_sym lseek
	.addrsig_sym copyfd
	.addrsig_sym SEEK_SET
	.addrsig_sym stdout