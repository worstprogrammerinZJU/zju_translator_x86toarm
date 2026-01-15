	.text
	.p2align	2                               // -- Begin function test_path
	.type	test_path,@function
test_path:                              // @test_path
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	fullpath
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	assert_string
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	fullpath
	mov	w1, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	assert_string
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	fullpath
	mov	w1, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	assert_string
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	fullpath
	mov	w1, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	assert_string
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	fullpath
	mov	w1, w0
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	assert_string
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	fullpath
	mov	w1, w0
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	stur	x0, [x29, #-8]                  // 8-byte Folded Spill
	bl	assert_string
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	fullpath
	mov	w1, w0
	ldur	x0, [x29, #-8]                  // 8-byte Folded Reload
	bl	assert_string
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_path, .Lfunc_end0-test_path
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/abc"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"/abc/def"
	.size	.L.str.1, 9
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"/abc///def"
	.size	.L.str.2, 11
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"//abc///def"
	.size	.L.str.3, 12
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"/abc/xyz"
	.size	.L.str.4, 9
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"/abc/def/../xyz"
	.size	.L.str.5, 16
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"/xyz"
	.size	.L.str.6, 5
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"/abc/def/../../../xyz"
	.size	.L.str.7, 22
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"/abc/def/../../../../xyz"
	.size	.L.str.8, 25
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_path
	.addrsig_sym assert_string
	.addrsig_sym fullpath