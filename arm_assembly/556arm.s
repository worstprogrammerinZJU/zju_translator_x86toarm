	.text
	.globl	read_boxes                      // -- Begin function read_boxes
	.p2align	2
	.type	read_boxes,@function
read_boxes:                             // @read_boxes
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fopen
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	bl	file_error
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #32]
	mov	w8, #64
	str	w8, [sp, #28]
	ldr	w0, [sp, #28]
	mov	w1, #36
	bl	calloc
	str	x0, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	add	x2, sp, #36
	sub	x3, x29, #28
	sub	x4, x29, #32
	add	x5, sp, #40
	sub	x6, x29, #36
	bl	fscanf
	subs	w8, w0, #5
	b.ne	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #28]
	lsl	w8, w8, #1
	str	w8, [sp, #28]
	ldr	x0, [sp, #16]
	ldrsw	x8, [sp, #28]
	mov	x9, #36
	mul	x8, x8, x9
	mov	w1, w8
	bl	realloc
	str	x0, [sp, #16]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #36]
	ldr	x9, [sp, #16]
	ldrsw	x11, [sp, #32]
	mov	x10, #36
	str	x10, [sp, #8]                   // 8-byte Folded Spill
	mul	x11, x11, x10
	str	w8, [x9, x11]
	ldur	w8, [x29, #-28]
	ldr	x9, [sp, #16]
	ldrsw	x11, [sp, #32]
	mul	x11, x11, x10
	add	x9, x9, x11
	str	w8, [x9, #4]
	ldur	w8, [x29, #-32]
	ldr	x9, [sp, #16]
	ldrsw	x11, [sp, #32]
	mul	x11, x11, x10
	add	x9, x9, x11
	str	w8, [x9, #8]
	ldur	w8, [x29, #-36]
	ldr	x9, [sp, #16]
	ldrsw	x11, [sp, #32]
	mul	x11, x11, x10
	add	x9, x9, x11
	str	w8, [x9, #12]
	ldr	w8, [sp, #40]
	ldr	x9, [sp, #16]
	ldrsw	x11, [sp, #32]
	mul	x11, x11, x10
	add	x9, x9, x11
	str	w8, [x9, #16]
	ldur	s0, [x29, #-28]
	ldr	s1, [sp, #40]
	fmov	s2, #2.00000000
	fdiv	s1, s1, s2
	fsub	s0, s0, s1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #32]
	mul	x9, x9, x10
	add	x8, x8, x9
	str	s0, [x8, #20]
	ldur	s0, [x29, #-28]
	ldr	s1, [sp, #40]
	fdiv	s1, s1, s2
	fadd	s0, s0, s1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #32]
	mul	x9, x9, x10
	add	x8, x8, x9
	str	s0, [x8, #24]
	ldur	s0, [x29, #-32]
	ldur	s1, [x29, #-36]
	fdiv	s1, s1, s2
	fsub	s0, s0, s1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #32]
	mul	x9, x9, x10
	add	x8, x8, x9
	str	s0, [x8, #28]
	ldur	s0, [x29, #-32]
	ldur	s1, [x29, #-36]
	fdiv	s1, s1, s2
	fadd	s0, s0, s1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #32]
	mul	x9, x9, x10
	add	x8, x8, x9
	str	s0, [x8, #32]
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_3
.LBB0_7:
	ldur	x0, [x29, #-24]
	bl	fclose
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	read_boxes, .Lfunc_end0-read_boxes
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%d %f %f %f %f"
	.size	.L.str.1, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym calloc
	.addrsig_sym fscanf
	.addrsig_sym realloc
	.addrsig_sym fclose