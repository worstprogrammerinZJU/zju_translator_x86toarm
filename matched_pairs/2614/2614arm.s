	.text
	.p2align	2                               // -- Begin function test_dict
	.type	test_dict,@function
test_dict:                              // @test_dict
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	make_dict
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	dict_get
	bl	assert_null
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	mov	x2, #50
	bl	dict_put
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	mov	x2, #70
	bl	dict_put
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	dict_get
	mov	x1, x0
	mov	w0, #50
	bl	assert_int
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	dict_get
	mov	x1, x0
	mov	w0, #70
	bl	assert_int
	ldur	x0, [x29, #-8]
	bl	dict_keys
	bl	vec_len
	mov	x1, x0
	mov	w0, #2
	bl	assert_int
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_dict, .Lfunc_end0-test_dict
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"xyz"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_dict
	.addrsig_sym make_dict
	.addrsig_sym assert_null
	.addrsig_sym dict_get
	.addrsig_sym dict_put
	.addrsig_sym assert_int
	.addrsig_sym vec_len
	.addrsig_sym dict_keys