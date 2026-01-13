	.text
	.p2align	2                               // -- Begin function checkerrormsg
	.type	checkerrormsg,@function
checkerrormsg:                          // @checkerrormsg
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	checkerrormsg, .Lfunc_end0-checkerrormsg
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%%FAIL\n"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym checkerrormsg
	.addrsig_sym strcmp