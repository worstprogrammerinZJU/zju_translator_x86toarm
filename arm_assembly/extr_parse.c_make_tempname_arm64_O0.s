	.text
	.globl	make_tempname                   // -- Begin function make_tempname
	.p2align	2
	.type	make_tempname,@function
make_tempname:                          // @make_tempname
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x9, make_tempname.c
	ldr	w1, [x9, :lo12:make_tempname.c]
	add	w8, w1, #1
	str	w8, [x9, :lo12:make_tempname.c]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	format
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	make_tempname, .Lfunc_end0-make_tempname
                                        // -- End function
	.type	make_tempname.c,@object         // @make_tempname.c
	.local	make_tempname.c
	.comm	make_tempname.c,4,4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".T%d"
	.size	.L.str, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym format
	.addrsig_sym make_tempname.c