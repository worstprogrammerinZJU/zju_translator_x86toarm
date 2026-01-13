	.text
	.p2align	2                               // -- Begin function read_cpp_header_name
	.type	read_cpp_header_name,@function
read_cpp_header_name:                   // @read_cpp_header_name
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	read_header_file_name
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	.LBB0_15
.LBB0_2:
	bl	read_expand_newline
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	adrp	x9, TSTRING
	ldr	x9, [x9, :lo12:TSTRING]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-24]
	str	wzr, [x8]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_15
.LBB0_6:
	ldr	x0, [sp, #24]
	mov	w1, #60
	bl	is_keyword
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #24]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_8
.LBB0_8:
	bl	make_vector
	str	x0, [sp, #16]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	bl	read_expand_newline
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	errort
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #62
	bl	is_keyword
	cbz	x0, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_14
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	vec_push
	b	.LBB0_9
.LBB0_14:
	ldur	x9, [x29, #-24]
	mov	w8, #1
	str	w8, [x9]
	ldr	x0, [sp, #16]
	bl	join_paths
	stur	x0, [x29, #-8]
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_cpp_header_name, .Lfunc_end0-read_cpp_header_name
                                        // -- End function
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"expected filename, but got newline"
	.size	.L.str, 35
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.xword	0                               // 0x0
	.size	TSTRING, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"< expected, but got %s"
	.size	.L.str.1, 23
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"premature end of header name"
	.size	.L.str.2, 29
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_cpp_header_name
	.addrsig_sym read_header_file_name
	.addrsig_sym read_expand_newline
	.addrsig_sym errort
	.addrsig_sym is_keyword
	.addrsig_sym tok2s
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym join_paths
	.addrsig_sym TNEWLINE
	.addrsig_sym TSTRING