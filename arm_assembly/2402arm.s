	.text
	.p2align	2                               // -- Begin function ckrespsub
	.type	ckrespsub,@function
ckrespsub:                              // @ckrespsub
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldur	w0, [x29, #-4]
	bl	readline
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	strstr
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	assertf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	ckrespsub, .Lfunc_end0-ckrespsub
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\"%s\" not in \"%s\""
	.size	.L.str, 17
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ckrespsub
	.addrsig_sym readline
	.addrsig_sym assertf
	.addrsig_sym strstr