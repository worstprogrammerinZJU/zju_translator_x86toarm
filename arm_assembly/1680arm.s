	.text
	.globl	make_map                        // -- Begin function make_map
	.p2align	2
	.type	make_map,@function
make_map:                               // @make_map
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, INIT_SIZE
	ldr	w1, [x8, :lo12:INIT_SIZE]
	mov	x0, xzr
	bl	do_make_map
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	make_map, .Lfunc_end0-make_map
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