	.text
	.p2align	2                               // -- Begin function test_map
	.type	test_map,@function
test_map:                               // @test_map
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	bl	make_map
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	map_get
	bl	assert_null
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	mov	w9, #10000
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	format
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-24]
	ldursw	x2, [x29, #-12]
	bl	map_put
	ldur	w8, [x29, #-12]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-24]
	bl	map_get
	mov	x8, x0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	sxtw	x1, w8
	bl	assert_int
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_4:
	stur	wzr, [x29, #-28]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	subs	w8, w8, #1000
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w1, [x29, #-28]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	format
	str	x0, [sp, #40]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #40]
	ldursw	x2, [x29, #-28]
	bl	map_put
	ldur	w8, [x29, #-28]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #40]
	bl	map_get
	mov	x8, x0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	sxtw	x1, w8
	bl	assert_int
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_5
.LBB0_8:
	str	wzr, [sp, #36]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	mov	w9, #10000
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w1, [sp, #36]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	format
	str	x0, [sp, #24]
	ldr	w8, [sp, #36]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	map_get
	mov	x1, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	map_remove
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	map_get
	bl	assert_null
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_9
.LBB0_12:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	test_map, .Lfunc_end0-test_map
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_map
	.addrsig_sym make_map
	.addrsig_sym assert_null
	.addrsig_sym map_get
	.addrsig_sym format
	.addrsig_sym map_put
	.addrsig_sym assert_int
	.addrsig_sym map_remove