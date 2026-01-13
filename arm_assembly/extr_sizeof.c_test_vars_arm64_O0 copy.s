	.text
	.p2align	2                               // -- Begin function test_vars
	.type	test_vars,@function
test_vars:                              // @test_vars
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	adrp	x8, .L__const.test_vars.a
	add	x8, x8, :lo12:.L__const.test_vars.a
	ldrh	w9, [x8]
	sturh	w9, [x29, #-4]
	ldrb	w8, [x8, #2]
	sturb	w8, [x29, #-2]
	mov	w1, #3
	mov	w0, w1
	bl	expect
	adrp	x8, .L__const.test_vars.b
	add	x8, x8, :lo12:.L__const.test_vars.b
	ldr	w8, [x8]
	stur	w8, [x29, #-8]
	mov	w1, #4
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	mov	w1, #1
	str	w1, [sp, #16]                   // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	mov	w1, #40
	mov	w0, w1
	bl	expect
	mov	w1, #8
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	mov	w1, #24
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	test_vars, .Lfunc_end0-test_vars
                                        // -- End function
	.type	.L__const.test_vars.a,@object   // @__const.test_vars.a
	.section	.rodata,"a",@progbits
.L__const.test_vars.a:
	.ascii	"\001\002\003"
	.size	.L__const.test_vars.a, 3
	.type	.L__const.test_vars.b,@object   // @__const.test_vars.b
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.test_vars.b:
	.asciz	"abc"
	.size	.L__const.test_vars.b, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_vars
	.addrsig_sym expect