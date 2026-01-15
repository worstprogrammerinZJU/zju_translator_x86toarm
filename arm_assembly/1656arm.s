	.text
	.globl	testmain                        // -- Begin function testmain
	.p2align	2
	.type	testmain,@function
testmain:                               // @testmain
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	print
	bl	special
	bl	include
	bl	predefined
	bl	simple
	bl	loop
	bl	undef
	bl	cond_incl
	bl	const_expr
	bl	defined
	bl	ifdef
	bl	funclike
	bl	empty
	bl	noarg
	bl	null
	bl	counter
	bl	gnuext
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"macros"
	.size	.L.str, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym special
	.addrsig_sym include
	.addrsig_sym predefined
	.addrsig_sym simple
	.addrsig_sym loop
	.addrsig_sym undef
	.addrsig_sym cond_incl
	.addrsig_sym const_expr
	.addrsig_sym defined
	.addrsig_sym ifdef
	.addrsig_sym funclike
	.addrsig_sym empty
	.addrsig_sym noarg
	.addrsig_sym null
	.addrsig_sym counter
	.addrsig_sym gnuext