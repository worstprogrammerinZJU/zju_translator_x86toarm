	.text
	.globl	make_label                      // -- Begin function make_label
	.p2align	2
	.type	make_label,@function
make_label:                             // @make_label
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x9, make_label.c
	ldr	w1, [x9, :lo12:make_label.c]
	add	w8, w1, #1
	str	w8, [x9, :lo12:make_label.c]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	format
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	make_label, .Lfunc_end0-make_label
                                        // -- End function
	.type	make_label.c,@object            // @make_label.c
	.local	make_label.c
	.comm	make_label.c,4,4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".L%d"
	.size	.L.str, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym format
	.addrsig_sym make_label.c