	.text
	.p2align	2                               // -- Begin function lua_proto_append_err_packet
	.type	lua_proto_append_err_packet,@function
lua_proto_append_err_packet:            // @lua_proto_append_err_packet
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x8, LUA_TTABLE
	ldr	w2, [x8, :lo12:LUA_TTABLE]
	mov	w1, #1
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	luaL_checktype
	bl	network_mysqld_err_packet_new
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	adrp	x8, errmsg
	ldr	w1, [x8, :lo12:errmsg]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, sqlstate
	ldr	w1, [x8, :lo12:sqlstate]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, errcode
	ldr	w1, [x8, :lo12:errcode]
	bl	LUA_IMPORT_INT
	mov	x0, xzr
	bl	g_string_new
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	network_mysqld_proto_append_err_packet
	ldr	x0, [sp, #24]
	bl	network_mysqld_err_packet_free
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	S
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	lua_pushlstring
	ldur	x0, [x29, #-16]
	adrp	x8, TRUE
	ldr	w1, [x8, :lo12:TRUE]
	bl	g_string_free
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	lua_proto_append_err_packet, .Lfunc_end0-lua_proto_append_err_packet
                                        // -- End function
	.type	LUA_TTABLE,@object              // @LUA_TTABLE
	.bss
	.globl	LUA_TTABLE
	.p2align	2
LUA_TTABLE:
	.word	0                               // 0x0
	.size	LUA_TTABLE, 4
	.type	errmsg,@object                  // @errmsg
	.globl	errmsg
	.p2align	2
errmsg:
	.word	0                               // 0x0
	.size	errmsg, 4
	.type	sqlstate,@object                // @sqlstate
	.globl	sqlstate
	.p2align	2
sqlstate:
	.word	0                               // 0x0
	.size	sqlstate, 4
	.type	errcode,@object                 // @errcode
	.globl	errcode
	.p2align	2
errcode:
	.word	0                               // 0x0
	.size	errcode, 4
	.type	TRUE,@object                    // @TRUE
	.globl	TRUE
	.p2align	2
TRUE:
	.word	0                               // 0x0
	.size	TRUE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_append_err_packet
	.addrsig_sym luaL_checktype
	.addrsig_sym network_mysqld_err_packet_new
	.addrsig_sym LUA_IMPORT_STR
	.addrsig_sym LUA_IMPORT_INT
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_proto_append_err_packet
	.addrsig_sym network_mysqld_err_packet_free
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym g_string_free
	.addrsig_sym LUA_TTABLE
	.addrsig_sym errmsg
	.addrsig_sym sqlstate
	.addrsig_sym errcode
	.addrsig_sym TRUE