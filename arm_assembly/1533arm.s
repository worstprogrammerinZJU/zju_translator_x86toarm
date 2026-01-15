	.text
	.p2align	2                               // -- Begin function test_string
	.type	test_string,@function
test_string:                            // @test_string
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	adrp	x8, .L.str
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	mov	x0, x1
	bl	expect_string
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x1
	bl	expect_string
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldrb	w1, [x8, :lo12:.L.str]
	mov	w0, #97
	bl	expect
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldrb	w1, [x8, #3]
	mov	w0, wzr
	bl	expect
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	x0, x1
	bl	expect_string
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	mov	x0, x1
	bl	expect_string
	adrp	x8, .L__const.test_string.expected
	add	x8, x8, :lo12:.L__const.test_string.expected
	ldr	q0, [x8]
	sub	x0, x29, #16
	stur	q0, [x29, #-16]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	expect_string
	mov	w1, #99
	mov	w0, w1
	bl	expect
	mov	w1, #12354
	str	w1, [sp, #24]                   // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #24]                   // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #24]                   // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	mov	w8, #1
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	stur	w8, [x29, #-20]
	mov	w8, #2
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	stur	w8, [x29, #-24]
	mov	w8, #3
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	stur	w8, [x29, #-28]
	mov	w8, #4
	str	w8, [sp, #40]                   // 4-byte Folded Spill
	stur	w8, [x29, #-32]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	ldur	w9, [x29, #-28]
	add	w8, w8, w9
	ldur	w9, [x29, #-32]
	add	w1, w8, w9
	mov	w0, #10
	str	w0, [sp, #44]                   // 4-byte Folded Spill
	bl	expect
	ldr	w11, [sp, #28]                  // 4-byte Folded Reload
	ldr	w10, [sp, #32]                  // 4-byte Folded Reload
	ldr	w9, [sp, #36]                   // 4-byte Folded Reload
	ldr	w8, [sp, #40]                   // 4-byte Folded Reload
	ldr	w0, [sp, #44]                   // 4-byte Folded Reload
	stur	w11, [x29, #-36]
	stur	w10, [x29, #-40]
	stur	w9, [x29, #-44]
	str	w8, [sp, #48]
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-40]
	add	w8, w8, w9
	ldur	w9, [x29, #-44]
	add	w8, w8, w9
	ldr	w9, [sp, #48]
	add	w1, w8, w9
	bl	expect
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	test_string, .Lfunc_end0-test_string
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"abcd"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"abcdef"
	.size	.L.str.2, 7
	.type	.L__const.test_string.expected,@object // @__const.test_string.expected
.L__const.test_string.expected:
	.asciz	"Aa\007\b\f\n\r\t\013\033\007\017\235\377\022"
	.size	.L__const.test_string.expected, 16
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Aa\007\b\f\n\r\t\013\033\007\017\235\377\022"
	.size	.L.str.3, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_string
	.addrsig_sym expect_string
	.addrsig_sym expect