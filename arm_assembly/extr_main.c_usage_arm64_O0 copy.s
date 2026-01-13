	.text
	.p2align	2                               // -- Begin function usage
	.type	usage,@function
usage:                                  // @usage
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	adrp	x8, stderr
	ldr	x8, [x8, :lo12:stderr]
	str	x8, [sp, #16]
	ldur	w8, [x29, #-4]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, stdout
	ldr	x8, [x8, :lo12:stdout]
	str	x8, [sp, #16]
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	adrp	x8, JQ_VERSION
	ldr	x2, [x8, :lo12:JQ_VERSION]
	adrp	x8, progname
	ldr	x3, [x8, :lo12:progname]
	ldr	x4, [x8, :lo12:progname]
	ldr	x5, [x8, :lo12:progname]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	str	w0, [sp, #12]
	ldur	w8, [x29, #-8]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	adrp	x8, progname
	ldr	x2, [x8, :lo12:progname]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fprintf
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fprintf
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-4]
	cbnz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	mov	w8, #2
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_8:
	ldur	w8, [x29, #-4]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	exit
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	usage, .Lfunc_end0-usage
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	3
stderr:
	.xword	0
	.size	stderr, 8
	.type	stdout,@object                  // @stdout
	.globl	stdout
	.p2align	3
stdout:
	.xword	0
	.size	stdout, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq - commandline JSON processor [version %s]\n\nUsage:\t%s [options] <jq filter> [file...]\n\t%s [options] --args <jq filter> [strings...]\n\t%s [options] --jsonargs <jq filter> [JSON_TEXTS...]\n\njq is a tool for processing JSON inputs, applying the given filter to\nits JSON text inputs and producing the filter's results as JSON on\nstandard output.\n\nThe simplest filter is ., which copies jq's input to its output\nunmodified (except for formatting, but note that IEEE754 is used\nfor number representation internally, with all that that implies).\n\nFor more advanced filters see the jq(1) manpage (\"man jq\")\nand/or https://stedolan.github.io/jq\n\nExample:\n\n\t$ echo '{\"foo\": 0}' | jq .\n\t{\n\t\t\"foo\": 0\n\t}\n\n"
	.size	.L.str, 694
	.type	JQ_VERSION,@object              // @JQ_VERSION
	.bss
	.globl	JQ_VERSION
	.p2align	3
JQ_VERSION:
	.xword	0
	.size	JQ_VERSION, 8
	.type	progname,@object                // @progname
	.globl	progname
	.p2align	3
progname:
	.xword	0
	.size	progname, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"For a listing of options, use %s --help.\n"
	.size	.L.str.1, 42
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"Some of the options include:\n  -c               compact instead of pretty-printed output;\n  -n               use `null` as the single input value;\n  -e               set the exit status code based on the output;\n  -s               read (slurp) all inputs into an array; apply filter to it;\n  -r               output raw strings, not JSON texts;\n  -R               read raw strings, not JSON texts;\n  -C               colorize JSON;\n  -M               monochrome (don't colorize JSON);\n  -S               sort keys of objects on output;\n  --tab            use tabs for indentation;\n  --arg a v        set variable $a to value <v>;\n  --argjson a v    set variable $a to JSON value <v>;\n  --slurpfile a f  set variable $a to an array of JSON texts read from <f>;\n  --rawfile a f    set variable $a to a string consisting of the contents of <f>;\n  --args           remaining arguments are string arguments, not files;\n  --jsonargs       remaining arguments are JSON arguments, not files;\n  --               terminates argument processing;\n\nNamed arguments are also available as $ARGS.named[], while\npositional arguments are available as $ARGS.positional[].\n\nSee the manpage for more options.\n"
	.size	.L.str.2, 1189
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usage
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym stderr
	.addrsig_sym stdout
	.addrsig_sym JQ_VERSION
	.addrsig_sym progname