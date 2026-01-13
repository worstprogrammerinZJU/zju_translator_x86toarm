	.text
	.globl	read_cfg                        // -- Begin function read_cfg
	.p2align	2
	.type	read_cfg,@function
read_cfg:                               // @read_cfg
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fopen
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	bl	file_error
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-28]
	bl	make_list
	str	x0, [sp, #24]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	bl	fgetl
	stur	x0, [x29, #-24]
	cbz	x0, .LBB0_14
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	ldur	x0, [x29, #-24]
	bl	strip
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	cbz	w8, .LBB0_9
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #35
	b.eq	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #59
	b.eq	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #91
	b.ne	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	mov	w0, #16
	bl	malloc
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	list_insert
	bl	make_list
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	b	.LBB0_13
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-24]
	bl	free
	b	.LBB0_13
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-24]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #8]
	bl	read_option
	cbnz	w0, .LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=1
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-28]
	ldur	x3, [x29, #-24]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fprintf
	ldur	x0, [x29, #-24]
	bl	free
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_14:
	ldur	x0, [x29, #-16]
	bl	fclose
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_cfg, .Lfunc_end0-read_cfg
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Config file error line %d, could parse: %s\n"
	.size	.L.str.1, 44
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym make_list
	.addrsig_sym fgetl
	.addrsig_sym strip
	.addrsig_sym malloc
	.addrsig_sym list_insert
	.addrsig_sym free
	.addrsig_sym read_option
	.addrsig_sym fprintf
	.addrsig_sym fclose
	.addrsig_sym stderr