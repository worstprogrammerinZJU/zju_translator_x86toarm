	.text
	.p2align	2                               // -- Begin function f_strptime
	.type	f_strptime,@function
f_strptime:                             // @f_strptime
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	ldur	w0, [x29, #-20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-24]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #32]                   // 4-byte Folded Reload
	bl	ret_error2
	stur	w0, [x29, #-4]
	b	.LBB0_22
.LBB0_3:
	sub	x0, x29, #48
	mov	w1, wzr
	mov	w2, #24
	bl	memset
	mov	w8, #8
	stur	w8, [x29, #-48]
	mov	w8, #367
	stur	w8, [x29, #-44]
	ldur	w0, [x29, #-20]
	bl	jv_string_value
	str	x0, [sp, #56]
	ldur	w0, [x29, #-24]
	bl	jv_string_value
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-24]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	jv_string
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	bl	ret_error2
	stur	w0, [x29, #-4]
	b	.LBB0_22
.LBB0_5:
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #48]
	sub	x2, x29, #48
	bl	strptime
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	cbz	x8, .LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #40]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_9
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #40]
	ldrb	w0, [x8]
	bl	isspace
	cbnz	w0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-24]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x1, [sp, #56]
	ldr	x2, [sp, #48]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	jv_string_fmt
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	bl	ret_error2
	stur	w0, [x29, #-4]
	b	.LBB0_22
.LBB0_9:
	ldur	w0, [x29, #-24]
	bl	jv_free
	ldur	w8, [x29, #-48]
	subs	w8, w8, #8
	b.ne	.LBB0_14
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB0_14
	b	.LBB0_11
.LBB0_11:
	ldur	w8, [x29, #-32]
	tbnz	w8, #31, .LBB0_14
	b	.LBB0_12
.LBB0_12:
	ldur	w8, [x29, #-32]
	subs	w8, w8, #11
	b.gt	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	sub	x0, x29, #48
	bl	set_tm_wday
	b	.LBB0_14
.LBB0_14:
	ldur	w8, [x29, #-44]
	subs	w8, w8, #367
	b.ne	.LBB0_19
	b	.LBB0_15
.LBB0_15:
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB0_19
	b	.LBB0_16
.LBB0_16:
	ldur	w8, [x29, #-32]
	tbnz	w8, #31, .LBB0_19
	b	.LBB0_17
.LBB0_17:
	ldur	w8, [x29, #-32]
	subs	w8, w8, #11
	b.gt	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	sub	x0, x29, #48
	bl	set_tm_yday
	b	.LBB0_19
.LBB0_19:
	sub	x0, x29, #48
	bl	tm2jv
	str	w0, [sp, #36]
	ldr	x8, [sp, #40]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldr	w8, [sp, #36]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldr	x0, [sp, #40]
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	jv_array_append
	str	w0, [sp, #36]
	b	.LBB0_21
.LBB0_21:
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldr	w8, [sp, #36]
	stur	w8, [x29, #-4]
	b	.LBB0_22
.LBB0_22:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	f_strptime, .Lfunc_end0-f_strptime
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"strptime/1 requires string inputs and arguments"
	.size	.L.str, 48
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%Y-%m-%dT%H:%M:%SZ"
	.size	.L.str.1, 19
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"strptime/1 only supports ISO 8601 on this platform"
	.size	.L.str.2, 51
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"date \"%s\" does not match format \"%s\""
	.size	.L.str.3, 37
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_strptime
	.addrsig_sym jv_get_kind
	.addrsig_sym ret_error2
	.addrsig_sym jv_string
	.addrsig_sym memset
	.addrsig_sym jv_string_value
	.addrsig_sym strcmp
	.addrsig_sym strptime
	.addrsig_sym isspace
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_free
	.addrsig_sym set_tm_wday
	.addrsig_sym set_tm_yday
	.addrsig_sym tm2jv
	.addrsig_sym jv_array_append
	.addrsig_sym JV_KIND_STRING