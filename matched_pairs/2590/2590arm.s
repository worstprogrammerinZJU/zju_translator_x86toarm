	.text
	.globl	read_map                        // -- Begin function read_map
	.p2align	2
	.type	read_map,@function
read_map:                               // @read_map
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fopen
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	bl	file_error
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #8]
	bl	fgetl
	str	x0, [sp, #16]
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	ldr	x0, [sp, #24]
	ldursw	x8, [x29, #-12]
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	str	x0, [sp, #24]
	ldr	x0, [sp, #16]
	bl	atoi
	ldr	x8, [sp, #24]
	ldur	w9, [x29, #-12]
	subs	w9, w9, #1
	str	w0, [x8, w9, sxtw #2]
	b	.LBB0_3
.LBB0_5:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_map, .Lfunc_end0-read_map
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym fgetl
	.addrsig_sym realloc
	.addrsig_sym atoi