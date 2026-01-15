	.text
	.globl	print_letters                   // -- Begin function print_letters
	.p2align	2
	.type	print_letters,@function
print_letters:                          // @print_letters
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #16]
	adrp	x8, NUMCHARS
	ldr	w11, [x8, :lo12:NUMCHARS]
	mul	w10, w10, w11
	add	x0, x9, w10, sxtw #2
	ldr	w1, [x8, :lo12:NUMCHARS]
	bl	max_index
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	bl	int_to_alphanum
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_4:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	print_letters, .Lfunc_end0-print_letters
                                        // -- End function
	.type	NUMCHARS,@object                // @NUMCHARS
	.bss
	.globl	NUMCHARS
	.p2align	2
NUMCHARS:
	.word	0                               // 0x0
	.size	NUMCHARS, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%c"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym max_index
	.addrsig_sym printf
	.addrsig_sym int_to_alphanum
	.addrsig_sym NUMCHARS