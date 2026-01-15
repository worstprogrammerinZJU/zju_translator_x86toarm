	.text
	.p2align	2                               // -- Begin function read_hash_digraph
	.type	read_hash_digraph,@function
read_hash_digraph:                      // @read_hash_digraph
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #62
	bl	next
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w0, #125
	bl	make_keyword
	str	x0, [sp, #8]
	b	.LBB0_9
.LBB0_2:
	mov	w0, #58
	bl	next
	cbz	x0, .LBB0_8
	b	.LBB0_3
.LBB0_3:
	mov	w0, #37
	bl	next
	cbz	x0, .LBB0_7
	b	.LBB0_4
.LBB0_4:
	mov	w0, #58
	bl	next
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, KHASHHASH
	ldrb	w0, [x8, :lo12:KHASHHASH]
	bl	make_keyword
	str	x0, [sp, #8]
	b	.LBB0_9
.LBB0_6:
	mov	w0, #37
	bl	unreadc
	b	.LBB0_7
.LBB0_7:
	mov	w0, #35
	bl	make_keyword
	str	x0, [sp, #8]
	b	.LBB0_9
.LBB0_8:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_9
.LBB0_9:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_hash_digraph, .Lfunc_end0-read_hash_digraph
                                        // -- End function
	.type	KHASHHASH,@object               // @KHASHHASH
	.bss
	.globl	KHASHHASH
KHASHHASH:
	.byte	0                               // 0x0
	.size	KHASHHASH, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_hash_digraph
	.addrsig_sym next
	.addrsig_sym make_keyword
	.addrsig_sym unreadc
	.addrsig_sym KHASHHASH