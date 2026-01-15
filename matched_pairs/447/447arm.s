	.text
	.p2align	2                               // -- Begin function read_include_next
	.type	read_include_next,@function
read_include_next:                      // @read_include_next
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	sub	x1, x29, #20
	bl	read_cpp_header_name
	stur	x0, [x29, #-32]
	bl	expect_newline
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	subs	w8, w8, #47
	b.ne	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	x1, [x29, #-32]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	mov	w2, wzr
	bl	try_include
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_18
.LBB0_3:
	b	.LBB0_17
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	bl	fullpath
	str	x0, [sp, #40]
	str	wzr, [sp, #36]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	adrp	x8, std_include_path
	ldr	w0, [x8, :lo12:std_include_path]
	bl	vec_len
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	adrp	x8, std_include_path
	ldr	w0, [x8, :lo12:std_include_path]
	ldr	w1, [sp, #36]
	bl	vec_get
	str	x0, [sp, #24]
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-32]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	format
	bl	fullpath
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	strcmp
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_10
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_5
.LBB0_10:
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	adrp	x8, std_include_path
	ldr	w0, [x8, :lo12:std_include_path]
	bl	vec_len
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_16
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	adrp	x8, std_include_path
	ldr	w0, [x8, :lo12:std_include_path]
	ldr	w1, [sp, #36]
	bl	vec_get
	ldur	x1, [x29, #-32]
	mov	w2, wzr
	bl	try_include
	cbz	x0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_18
.LBB0_14:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_11
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-32]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	errort
	b	.LBB0_18
.LBB0_18:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	read_include_next, .Lfunc_end0-read_include_next
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/"
	.size	.L.str, 2
	.type	std_include_path,@object        // @std_include_path
	.bss
	.globl	std_include_path
	.p2align	2
std_include_path:
	.word	0                               // 0x0
	.size	std_include_path, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s/%s"
	.size	.L.str.1, 6
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"cannot find header file: %s"
	.size	.L.str.2, 28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_include_next
	.addrsig_sym read_cpp_header_name
	.addrsig_sym expect_newline
	.addrsig_sym try_include
	.addrsig_sym fullpath
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym strcmp
	.addrsig_sym format
	.addrsig_sym errort
	.addrsig_sym std_include_path