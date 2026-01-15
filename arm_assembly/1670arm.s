	.text
	.p2align	2                               // -- Begin function parseopt
	.type	parseopt,@function
parseopt:                               // @parseopt
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	bl	make_buffer
	adrp	x8, cppdefs
	str	w0, [x8, :lo12:cppdefs]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w0, [x29, #-4]
	ldur	x1, [x29, #-16]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	getopt
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-20]
	adds	w8, w8, #1
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_23
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	subs	w8, w8, #68
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #51
	b.hi	.LBB0_21
// %bb.4:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, optarg
	ldr	w0, [x8, :lo12:optarg]
	bl	add_include_path
	b	.LBB0_22
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x9, cpponly
	mov	w8, #1
	str	w8, [x9, :lo12:cpponly]
	b	.LBB0_22
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, optarg
	ldr	w0, [x8, :lo12:optarg]
	mov	w1, #61
	bl	strchr
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #16]
	mov	w8, #32
	strb	w8, [x9]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, cppdefs
	ldr	w0, [x8, :lo12:cppdefs]
	adrp	x8, optarg
	ldr	w2, [x8, :lo12:optarg]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	buf_printf
	b	.LBB0_22
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_22
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x9, dumpasm
	mov	w8, #1
	str	w8, [x9, :lo12:dumpasm]
	b	.LBB0_22
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, cppdefs
	ldr	w0, [x8, :lo12:cppdefs]
	adrp	x8, optarg
	ldr	w2, [x8, :lo12:optarg]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	buf_printf
	b	.LBB0_22
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, optarg
	ldr	w0, [x8, :lo12:optarg]
	bl	parse_warnings_arg
	b	.LBB0_22
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x9, dontlink
	mov	w8, #1
	str	w8, [x9, :lo12:dontlink]
	b	.LBB0_22
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, optarg
	ldr	w0, [x8, :lo12:optarg]
	bl	parse_f_arg
	b	.LBB0_22
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, optarg
	ldr	w0, [x8, :lo12:optarg]
	bl	parse_m_arg
	b	.LBB0_22
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_22
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, optarg
	ldr	w8, [x8, :lo12:optarg]
	adrp	x9, outfile
	str	w8, [x9, :lo12:outfile]
	b	.LBB0_22
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, enable_warning
	str	wzr, [x8, :lo12:enable_warning]
	b	.LBB0_22
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w0, wzr
	bl	usage
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #1
	bl	usage
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_23:
	adrp	x8, optind
	ldr	w8, [x8, :lo12:optind]
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.eq	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	mov	w0, #1
	bl	usage
	b	.LBB0_25
.LBB0_25:
	adrp	x8, dumpast
	ldr	w8, [x8, :lo12:dumpast]
	cbnz	w8, .LBB0_30
	b	.LBB0_26
.LBB0_26:
	adrp	x8, cpponly
	ldr	w8, [x8, :lo12:cpponly]
	cbnz	w8, .LBB0_30
	b	.LBB0_27
.LBB0_27:
	adrp	x8, dumpasm
	ldr	w8, [x8, :lo12:dumpasm]
	cbnz	w8, .LBB0_30
	b	.LBB0_28
.LBB0_28:
	adrp	x8, dontlink
	ldr	w8, [x8, :lo12:dontlink]
	cbnz	w8, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	error
	b	.LBB0_30
.LBB0_30:
	ldur	x8, [x29, #-16]
	adrp	x9, optind
	ldrsw	x9, [x9, :lo12:optind]
	ldr	x8, [x8, x9, lsl #3]
	adrp	x9, infile
	str	x8, [x9, :lo12:infile]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	parseopt, .Lfunc_end0-parseopt
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_17-.Ltmp0
	.word	.LBB0_20-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_16-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_18-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_19-.Ltmp0
                                        // -- End function
	.type	cppdefs,@object                 // @cppdefs
	.bss
	.globl	cppdefs
	.p2align	2
cppdefs:
	.word	0                               // 0x0
	.size	cppdefs, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"I:ED:O:SU:W:acd:f:gm:o:hw"
	.size	.L.str, 26
	.type	optarg,@object                  // @optarg
	.bss
	.globl	optarg
	.p2align	2
optarg:
	.word	0                               // 0x0
	.size	optarg, 4
	.type	cpponly,@object                 // @cpponly
	.globl	cpponly
	.p2align	2
cpponly:
	.word	0                               // 0x0
	.size	cpponly, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"#define %s\n"
	.size	.L.str.1, 12
	.type	dumpasm,@object                 // @dumpasm
	.bss
	.globl	dumpasm
	.p2align	2
dumpasm:
	.word	0                               // 0x0
	.size	dumpasm, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"#undef %s\n"
	.size	.L.str.2, 11
	.type	dontlink,@object                // @dontlink
	.bss
	.globl	dontlink
	.p2align	2
dontlink:
	.word	0                               // 0x0
	.size	dontlink, 4
	.type	outfile,@object                 // @outfile
	.globl	outfile
	.p2align	2
outfile:
	.word	0                               // 0x0
	.size	outfile, 4
	.type	enable_warning,@object          // @enable_warning
	.globl	enable_warning
	.p2align	2
enable_warning:
	.word	0                               // 0x0
	.size	enable_warning, 4
	.type	optind,@object                  // @optind
	.globl	optind
	.p2align	2
optind:
	.word	0                               // 0x0
	.size	optind, 4
	.type	dumpast,@object                 // @dumpast
	.globl	dumpast
	.p2align	2
dumpast:
	.word	0                               // 0x0
	.size	dumpast, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"One of -a, -c, -E or -S must be specified"
	.size	.L.str.3, 42
	.type	infile,@object                  // @infile
	.bss
	.globl	infile
	.p2align	3
infile:
	.xword	0
	.size	infile, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parseopt
	.addrsig_sym make_buffer
	.addrsig_sym getopt
	.addrsig_sym add_include_path
	.addrsig_sym strchr
	.addrsig_sym buf_printf
	.addrsig_sym parse_warnings_arg
	.addrsig_sym parse_f_arg
	.addrsig_sym parse_m_arg
	.addrsig_sym usage
	.addrsig_sym error
	.addrsig_sym cppdefs
	.addrsig_sym optarg
	.addrsig_sym cpponly
	.addrsig_sym dumpasm
	.addrsig_sym dontlink
	.addrsig_sym outfile
	.addrsig_sym enable_warning
	.addrsig_sym optind
	.addrsig_sym dumpast
	.addrsig_sym infile