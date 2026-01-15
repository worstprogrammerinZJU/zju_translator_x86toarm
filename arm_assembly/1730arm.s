	.text
	.p2align	2                               // -- Begin function lua_proto_get_stmt_execute_packet_stmt_id
	.type	lua_proto_get_stmt_execute_packet_stmt_id,@function
lua_proto_get_stmt_execute_packet_stmt_id: // @lua_proto_get_stmt_execute_packet_stmt_id
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	w1, #1
	sub	x2, x29, #24
	bl	luaL_checklstring
	stur	x0, [x29, #-32]
	str	wzr, [sp, #12]
	ldur	x9, [x29, #-32]
	add	x8, sp, #16
	str	x9, [sp, #16]
	ldur	x9, [x29, #-24]
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	str	xzr, [sp, #32]
	ldr	w8, [sp, #12]
	mov	w9, #1
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	add	x0, sp, #32
	add	x1, sp, #8
	bl	network_mysqld_proto_get_stmt_execute_packet_stmt_id
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	adrp	x8, G_STRLOC
	ldr	w2, [x8, :lo12:G_STRLOC]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #8]
	bl	lua_pushinteger
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	lua_proto_get_stmt_execute_packet_stmt_id, .Lfunc_end0-lua_proto_get_stmt_execute_packet_stmt_id
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: network_mysqld_proto_get_stmt_execute_packet_stmt_id() failed"
	.size	.L.str, 66
	.type	G_STRLOC,@object                // @G_STRLOC
	.bss
	.globl	G_STRLOC
	.p2align	2
G_STRLOC:
	.word	0                               // 0x0
	.size	G_STRLOC, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_get_stmt_execute_packet_stmt_id
	.addrsig_sym luaL_checklstring
	.addrsig_sym network_mysqld_proto_get_stmt_execute_packet_stmt_id
	.addrsig_sym luaL_error
	.addrsig_sym lua_pushinteger
	.addrsig_sym G_STRLOC