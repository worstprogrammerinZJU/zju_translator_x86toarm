	.text
	.p2align	2                               // -- Begin function test_file
	.type	test_file,@function
test_file:                              // @test_file
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	make_file_string
	bl	stream_push
	bl	readc
	mov	x1, x0
	mov	w0, #97
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	assert_int
	bl	readc
	mov	x1, x0
	mov	w0, #98
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	bl	assert_int
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	unreadc
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	unreadc
	bl	readc
	mov	x1, x0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	assert_int
	bl	readc
	mov	x1, x0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	assert_int
	bl	readc
	mov	x1, x0
	mov	w0, #99
	bl	assert_int
	bl	readc
	mov	x1, x0
	mov	w0, #10
	stur	w0, [x29, #-4]                  // 4-byte Folded Spill
	bl	assert_int
	ldur	w0, [x29, #-4]                  // 4-byte Folded Reload
	bl	unreadc
	bl	readc
	mov	x1, x0
	ldur	w0, [x29, #-4]                  // 4-byte Folded Reload
	bl	assert_int
	bl	readc
	subs	x8, x0, #0
	cset	w8, lt
	and	w0, w8, #0x1
	bl	assert_true
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_file, .Lfunc_end0-test_file
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
	.size	.L.str, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_file
	.addrsig_sym stream_push
	.addrsig_sym make_file_string
	.addrsig_sym assert_int
	.addrsig_sym readc
	.addrsig_sym unreadc
	.addrsig_sym assert_true