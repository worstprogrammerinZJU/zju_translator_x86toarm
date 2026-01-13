	.text
	.p2align	2                               // -- Begin function make_static_label
	.type	make_static_label,@function
make_static_label:                      // @make_static_label
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x9, make_static_label.c
	ldr	w1, [x9, :lo12:make_static_label.c]
	add	w8, w1, #1
	str	w8, [x9, :lo12:make_static_label.c]
	ldr	x2, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	format
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_static_label, .Lfunc_end0-make_static_label
                                        // -- End function
	.type	make_static_label.c,@object     // @make_static_label.c
	.local	make_static_label.c
	.comm	make_static_label.c,4,4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".S%d.%s"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_static_label
	.addrsig_sym format
	.addrsig_sym make_static_label.c