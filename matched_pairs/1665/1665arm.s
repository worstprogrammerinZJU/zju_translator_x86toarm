	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x8, stdout
	ldr	w0, [x8, :lo12:stdout]
	mov	x1, xzr
	bl	setbuf
	adrp	x8, delete_temp_files
	ldr	w0, [x8, :lo12:delete_temp_files]
	bl	atexit
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	perror
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	parseopt
	adrp	x8, infile
	ldr	w0, [x8, :lo12:infile]
	bl	lex_init
	bl	cpp_init
	bl	parse_init
	bl	open_asmfile
	bl	set_output_file
	adrp	x8, cppdefs
	ldr	w0, [x8, :lo12:cppdefs]
	bl	buf_len
	subs	x8, x0, #0
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, cppdefs
	ldr	w0, [x8, :lo12:cppdefs]
	bl	buf_body
	bl	read_from_string
	b	.LBB0_4
.LBB0_4:
	adrp	x8, cpponly
	ldr	x8, [x8, :lo12:cpponly]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	bl	preprocess
	b	.LBB0_6
.LBB0_6:
	bl	read_toplevels
	stur	x0, [x29, #-24]
	stur	wzr, [x29, #-28]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	vec_len
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-24]
	ldur	w1, [x29, #-28]
	bl	vec_get
	str	x0, [sp, #24]
	adrp	x8, dumpast
	ldr	x8, [x8, :lo12:dumpast]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	x0, [sp, #24]
	bl	node2s
	mov	x1, x0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	b	.LBB0_11
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x0, [sp, #24]
	bl	emit_toplevel
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_7
.LBB0_13:
	bl	close_output_file
	adrp	x8, dumpast
	ldr	x8, [x8, :lo12:dumpast]
	cbnz	x8, .LBB0_24
	b	.LBB0_14
.LBB0_14:
	adrp	x8, dumpasm
	ldr	w8, [x8, :lo12:dumpasm]
	cbnz	w8, .LBB0_24
	b	.LBB0_15
.LBB0_15:
	adrp	x8, outfile
	ldr	x8, [x8, :lo12:outfile]
	cbnz	x8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	adrp	x8, infile
	ldr	w0, [x8, :lo12:infile]
	bl	base
	mov	w1, #111
	bl	replace_suffix
	adrp	x8, outfile
	str	x0, [x8, :lo12:outfile]
	b	.LBB0_17
.LBB0_17:
	bl	fork
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	b.ge	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	perror
	b	.LBB0_19
.LBB0_19:
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	adrp	x8, outfile
	ldr	x3, [x8, :lo12:outfile]
	adrp	x8, asmfile
	ldr	w5, [x8, :lo12:asmfile]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	x0, x1
	adrp	x2, .L.str.4
	add	x2, x2, :lo12:.L.str.4
	adrp	x4, .L.str.5
	add	x4, x4, :lo12:.L.str.5
	mov	x6, xzr
	bl	execlp
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	perror
	b	.LBB0_21
.LBB0_21:
	ldr	x0, [sp, #16]
	add	x1, sp, #12
	mov	w2, wzr
	bl	waitpid
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	b.ge	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	error
	b	.LBB0_23
.LBB0_23:
	b	.LBB0_24
.LBB0_24:
	mov	w0, wzr
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	stdout,@object                  // @stdout
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.type	delete_temp_files,@object       // @delete_temp_files
	.globl	delete_temp_files
	.p2align	2
delete_temp_files:
	.word	0                               // 0x0
	.size	delete_temp_files, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"atexit"
	.size	.L.str, 7
	.type	infile,@object                  // @infile
	.bss
	.globl	infile
	.p2align	2
infile:
	.word	0                               // 0x0
	.size	infile, 4
	.type	cppdefs,@object                 // @cppdefs
	.globl	cppdefs
	.p2align	2
cppdefs:
	.word	0                               // 0x0
	.size	cppdefs, 4
	.type	cpponly,@object                 // @cpponly
	.globl	cpponly
	.p2align	3
cpponly:
	.xword	0                               // 0x0
	.size	cpponly, 8
	.type	dumpast,@object                 // @dumpast
	.globl	dumpast
	.p2align	3
dumpast:
	.xword	0                               // 0x0
	.size	dumpast, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3
	.type	dumpasm,@object                 // @dumpasm
	.bss
	.globl	dumpasm
	.p2align	2
dumpasm:
	.word	0                               // 0x0
	.size	dumpasm, 4
	.type	outfile,@object                 // @outfile
	.globl	outfile
	.p2align	3
outfile:
	.xword	0                               // 0x0
	.size	outfile, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"fork"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"as"
	.size	.L.str.3, 3
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"-o"
	.size	.L.str.4, 3
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"-c"
	.size	.L.str.5, 3
	.type	asmfile,@object                 // @asmfile
	.bss
	.globl	asmfile
	.p2align	2
asmfile:
	.word	0                               // 0x0
	.size	asmfile, 4
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"execl failed"
	.size	.L.str.6, 13
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"as failed"
	.size	.L.str.7, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setbuf
	.addrsig_sym atexit
	.addrsig_sym perror
	.addrsig_sym parseopt
	.addrsig_sym lex_init
	.addrsig_sym cpp_init
	.addrsig_sym parse_init
	.addrsig_sym set_output_file
	.addrsig_sym open_asmfile
	.addrsig_sym buf_len
	.addrsig_sym read_from_string
	.addrsig_sym buf_body
	.addrsig_sym preprocess
	.addrsig_sym read_toplevels
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym printf
	.addrsig_sym node2s
	.addrsig_sym emit_toplevel
	.addrsig_sym close_output_file
	.addrsig_sym replace_suffix
	.addrsig_sym base
	.addrsig_sym fork
	.addrsig_sym execlp
	.addrsig_sym waitpid
	.addrsig_sym error
	.addrsig_sym stdout
	.addrsig_sym delete_temp_files
	.addrsig_sym infile
	.addrsig_sym cppdefs
	.addrsig_sym cpponly
	.addrsig_sym dumpast
	.addrsig_sym dumpasm
	.addrsig_sym outfile
	.addrsig_sym asmfile