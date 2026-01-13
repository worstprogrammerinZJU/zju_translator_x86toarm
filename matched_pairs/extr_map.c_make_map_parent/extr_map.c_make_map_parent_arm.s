	.text
	.globl	make_map_parent                 // -- Begin function make_map_parent
	.p2align	2
	.type	make_map_parent,@function
make_map_parent:                        // @make_map_parent
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, INIT_SIZE
	ldr	w1, [x8, :lo12:INIT_SIZE]
	bl	do_make_map
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_map_parent, .Lfunc_end0-make_map_parent
                                        // -- End function
	.type	INIT_SIZE,@object               // @INIT_SIZE
	.bss
	.globl	INIT_SIZE
	.p2align	2
INIT_SIZE:
	.word	0                               // 0x0
	.size	INIT_SIZE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_map
	.addrsig_sym INIT_SIZE