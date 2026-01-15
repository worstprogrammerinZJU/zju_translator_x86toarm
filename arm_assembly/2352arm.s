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
	bl	t1
	bl	t2
	bl	t3
	bl	t4
	bl	t5
	bl	t6
	bl	t7
	bl	t8
	bl	t9
	bl	t10
	bl	t11
	bl	t12
	bl	t13
	bl	t14
	bl	unnamed
	bl	assign
	bl	arrow
	bl	incomplete
	bl	bitfield_basic
	bl	bitfield_mix
	bl	bitfield_union
	bl	bitfield_unnamed
	bl	bitfield_initializer
	bl	test_offsetof
	bl	flexible_member
	bl	empty_struct
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"struct"
	.size	.L.str, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym t1
	.addrsig_sym t2
	.addrsig_sym t3
	.addrsig_sym t4
	.addrsig_sym t5
	.addrsig_sym t6
	.addrsig_sym t7
	.addrsig_sym t8
	.addrsig_sym t9
	.addrsig_sym t10
	.addrsig_sym t11
	.addrsig_sym t12
	.addrsig_sym t13
	.addrsig_sym t14
	.addrsig_sym unnamed
	.addrsig_sym assign
	.addrsig_sym arrow
	.addrsig_sym incomplete
	.addrsig_sym bitfield_basic
	.addrsig_sym bitfield_mix
	.addrsig_sym bitfield_union
	.addrsig_sym bitfield_unnamed
	.addrsig_sym bitfield_initializer
	.addrsig_sym test_offsetof
	.addrsig_sym flexible_member
	.addrsig_sym empty_struct