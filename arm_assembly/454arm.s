	.text
	.globl	read_token                      // -- Begin function read_token
	.p2align	2
	.type	read_token,@function
read_token:                             // @read_token
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	read_expand
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #35
	bl	is_keyword
	cbz	x0, .LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	read_directive
	b	.LBB0_1
.LBB0_5:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, MIN_CPP_TOKEN
	ldr	x9, [x9, :lo12:MIN_CPP_TOKEN]
	subs	x8, x8, x9
	cset	w8, lt
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #8]
	bl	maybe_convert_keyword
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_token, .Lfunc_end0-read_token
                                        // -- End function
	.type	MIN_CPP_TOKEN,@object           // @MIN_CPP_TOKEN
	.bss
	.globl	MIN_CPP_TOKEN
	.p2align	3
MIN_CPP_TOKEN:
	.xword	0                               // 0x0
	.size	MIN_CPP_TOKEN, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_expand
	.addrsig_sym is_keyword
	.addrsig_sym read_directive
	.addrsig_sym assert
	.addrsig_sym maybe_convert_keyword
	.addrsig_sym MIN_CPP_TOKEN