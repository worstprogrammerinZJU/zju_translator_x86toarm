	.text
	.p2align	2                               // -- Begin function usenext
	.type	usenext,@function
usenext:                                // @usenext
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	ldr	x0, [sp, #8]
	bl	filewclose
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	usenext, .Lfunc_end0-usenext
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"there is no next wal file"
	.size	.L.str, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usenext
	.addrsig_sym twarnx
	.addrsig_sym filewclose