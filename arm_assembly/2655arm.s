	.text
	.p2align	2                               // -- Begin function walscandir
	.type	walscandir,@function
walscandir:                             // @walscandir
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	mov	w8, #1073741824
	str	w8, [sp, #28]
	str	wzr, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #4]
	bl	opendir
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #28]
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-24]
	bl	readdir
	str	x0, [sp, #32]
	cbz	x0, .LBB0_14
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	adrp	x1, walscandir.base
	add	x1, x1, :lo12:walscandir.base
	mov	w2, #7
	bl	strncmp
	cbnz	x0, .LBB0_13
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	add	x0, x8, #7
	add	x1, sp, #8
	mov	w2, #10
	bl	strtol
	str	w0, [sp, #20]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_12
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	cbnz	w8, .LBB0_12
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.le	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]
	str	w8, [sp, #24]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_14:
	ldur	x0, [x29, #-24]
	bl	closedir
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldr	w8, [sp, #28]
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_15:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	walscandir, .Lfunc_end0-walscandir
                                        // -- End function
	.type	walscandir.base,@object         // @walscandir.base
	.data
walscandir.base:
	.asciz	"binlog."
	.size	walscandir.base, 8
	.type	walscandir.len,@object          // @walscandir.len
	.section	.rodata,"a",@progbits
	.p2align	2
walscandir.len:
	.word	7                               // 0x7
	.size	walscandir.len, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym walscandir
	.addrsig_sym opendir
	.addrsig_sym readdir
	.addrsig_sym strncmp
	.addrsig_sym strtol
	.addrsig_sym closedir
	.addrsig_sym walscandir.base