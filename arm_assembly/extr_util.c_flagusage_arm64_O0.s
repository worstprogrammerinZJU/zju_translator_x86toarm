	.text
	.p2align	2                               // -- Begin function flagusage
	.type	flagusage,@function
flagusage:                              // @flagusage
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x1, [sp]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	warnx
	mov	w0, #5
	bl	usage
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	flagusage, .Lfunc_end0-flagusage
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"flag requires an argument: %s"
	.size	.L.str, 30
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym flagusage
	.addrsig_sym warnx
	.addrsig_sym usage