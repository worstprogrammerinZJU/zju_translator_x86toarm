	.text
	.p2align	2                               // -- Begin function test_excessive
	.type	test_excessive,@function
test_excessive:                         // @test_excessive
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, .L__const.test_excessive.x1
	add	x8, x8, :lo12:.L__const.test_excessive.x1
	ldrh	w9, [x8]
	sturh	w9, [x29, #-4]
	ldrb	w8, [x8, #2]
	sturb	w8, [x29, #-2]
	mov	w1, #3
	stur	w1, [x29, #-12]                 // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	adrp	x8, .L__const.test_excessive.x2
	add	x8, x8, :lo12:.L__const.test_excessive.x2
	ldrh	w9, [x8]
	sub	x10, x29, #8
	str	x10, [sp, #8]                   // 8-byte Folded Spill
	sturh	w9, [x29, #-8]
	ldrb	w8, [x8, #2]
	sturb	w8, [x29, #-6]
	mov	w0, w1
	bl	expect
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w2, [x29, #-12]                 // 4-byte Folded Reload
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	strncmp
	mov	w1, w0
	mov	w0, wzr
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_excessive, .Lfunc_end0-test_excessive
                                        // -- End function
	.type	.L__const.test_excessive.x1,@object // @__const.test_excessive.x1
	.section	.rodata,"a",@progbits
.L__const.test_excessive.x1:
	.ascii	"\001\002\003"
	.size	.L__const.test_excessive.x1, 3
	.type	.L__const.test_excessive.x2,@object // @__const.test_excessive.x2
.L__const.test_excessive.x2:
	.ascii	"abc"
	.size	.L__const.test_excessive.x2, 3
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
	.size	.L.str, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_excessive
	.addrsig_sym expect
	.addrsig_sym strncmp