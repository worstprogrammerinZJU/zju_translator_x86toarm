	.text
	.globl	read_toplevels                  // -- Begin function read_toplevels
	.p2align	2
	.type	read_toplevels,@function
read_toplevels:                         // @read_toplevels
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	make_vector
	adrp	x8, toplevels
	str	x0, [x8, :lo12:toplevels]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	peek
	ldr	x8, [x0]
	adrp	x9, TEOF
	ldr	x9, [x9, :lo12:TEOF]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, toplevels
	ldr	x0, [x8, :lo12:toplevels]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	bl	is_funcdef
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, toplevels
	ldr	x8, [x8, :lo12:toplevels]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	read_funcdef
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, toplevels
	ldr	x0, [x8, :lo12:toplevels]
	mov	w1, #1
	bl	read_decl
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.Lfunc_end0:
	.size	read_toplevels, .Lfunc_end0-read_toplevels
                                        // -- End function
	.type	toplevels,@object               // @toplevels
	.bss
	.globl	toplevels
	.p2align	3
toplevels:
	.xword	0
	.size	toplevels, 8
	.type	TEOF,@object                    // @TEOF
	.globl	TEOF
	.p2align	3
TEOF:
	.xword	0                               // 0x0
	.size	TEOF, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_vector
	.addrsig_sym peek
	.addrsig_sym is_funcdef
	.addrsig_sym vec_push
	.addrsig_sym read_funcdef
	.addrsig_sym read_decl
	.addrsig_sym toplevels
	.addrsig_sym TEOF