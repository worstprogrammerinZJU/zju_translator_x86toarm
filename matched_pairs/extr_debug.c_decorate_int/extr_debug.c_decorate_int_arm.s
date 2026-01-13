	.text
	.p2align	2                               // -- Begin function decorate_int
	.type	decorate_int,@function
decorate_int:                           // @decorate_int
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x10, [x8, #16]
	adrp	x9, .L.str.1
	add	x9, x9, :lo12:.L.str.1
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	subs	x10, x10, #0
	csel	x8, x8, x9, ne
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp]
	ldr	x2, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x3, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	add	x4, x8, x9
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	format
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x1, [sp]
	ldr	x2, [sp, #16]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	format
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decorate_int, .Lfunc_end0-decorate_int
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"u"
	.size	.L.str, 2
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s%s:%d:%d"
	.size	.L.str.2, 11
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"%s%s"
	.size	.L.str.3, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decorate_int
	.addrsig_sym format