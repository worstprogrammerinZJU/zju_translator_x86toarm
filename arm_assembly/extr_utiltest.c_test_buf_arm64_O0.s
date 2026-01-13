	.text
	.p2align	2                               // -- Begin function test_buf
	.type	test_buf,@function
test_buf:                               // @test_buf
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	make_buffer
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #97
	bl	buf_write
	ldr	x0, [sp, #8]
	mov	w1, #98
	bl	buf_write
	ldr	x0, [sp, #8]
	mov	w1, wzr
	bl	buf_write
	ldr	x0, [sp, #8]
	bl	buf_body
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	assert_string
	bl	make_buffer
	str	x0, [sp]
	ldr	x0, [sp]
	mov	w1, #46
	bl	buf_write
	ldr	x0, [sp]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	buf_printf
	ldr	x0, [sp]
	bl	buf_body
	mov	w1, w0
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	assert_string
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_buf, .Lfunc_end0-test_buf
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ab"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"0123456789"
	.size	.L.str.2, 11
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	".0123456789"
	.size	.L.str.3, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_buf
	.addrsig_sym make_buffer
	.addrsig_sym buf_write
	.addrsig_sym assert_string
	.addrsig_sym buf_body
	.addrsig_sym buf_printf