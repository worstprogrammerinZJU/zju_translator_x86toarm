	.text
	.p2align	2                               // -- Begin function read_one_arg
	.type	read_one_arg,@function
read_one_arg:                           // @read_one_arg
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	bl	make_vector
	str	x0, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	lex
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TEOF
	ldr	x9, [x9, :lo12:TEOF]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	cbz	w8, .LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #35
	bl	is_keyword
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	read_directive
	b	.LBB0_1
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	cbnz	w8, .LBB0_11
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #41
	bl	is_keyword
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp, #8]
	bl	unget_token
	ldur	x9, [x29, #-24]
	mov	w8, #1
	str	w8, [x9]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_22
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	cbnz	w8, .LBB0_15
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #44
	bl	is_keyword
	cbz	x0, .LBB0_15
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	cbnz	w8, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_22
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #40
	bl	is_keyword
	cbz	x0, .LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #41
	bl	is_keyword
	cbz	x0, .LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	cbz	w8, .LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	copy_token
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9, #12]
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #8]
	bl	vec_push
	b	.LBB0_1
.LBB0_22:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_one_arg, .Lfunc_end0-read_one_arg
                                        // -- End function
	.type	TEOF,@object                    // @TEOF
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.xword	0                               // 0x0
	.size	TEOF, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unterminated macro argument list"
	.size	.L.str, 33
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_one_arg
	.addrsig_sym make_vector
	.addrsig_sym lex
	.addrsig_sym errort
	.addrsig_sym is_keyword
	.addrsig_sym read_directive
	.addrsig_sym unget_token
	.addrsig_sym copy_token
	.addrsig_sym vec_push
	.addrsig_sym TEOF
	.addrsig_sym TNEWLINE