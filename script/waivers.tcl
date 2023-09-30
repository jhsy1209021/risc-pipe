#
# Any disclosure about the Cadence Design Systems software or its use
# model to any third party violates the written Non-Disclosure Agreement
# between Cadence Design Systems, Inc. and the customer.
#
# THIS SOFTWARE CONTAINS CONFIDENTIAL INFORMATION AND TRADE SECRETS OF
# CADENCE DESIGN SYSTEMS, INC. USE, DISCLOSURE, OR REPRODUCTION IS
# PROHIBITED WITHOUT THE PRIOR EXPRESS WRITTEN PERMISSION OF CADENCE
# DESIGN SYSTEMS, INC.
#
# Copyright (C) 2000-2022 Cadence Design Systems, Inc. All Rights
# Reserved.  Unpublished -- rights reserved under the copyright laws of
# the United States.
#
# This product includes software developed by others and redistributed
# according to license agreement. See doc/third_party_readme.txt for
# further details.
#
# RESTRICTED RIGHTS LEGEND
#
# Use, duplication, or disclosure by the Government is subject to
# restrictions as set forth in subparagraph (c) (1) (ii) of the Rights in
# Technical Data and Computer Software clause at DFARS 252.227-7013 or
# subparagraphs (c) (1) and (2) of Commercial Computer Software -- Restricted
# Rights at 48 CFR 52.227-19, as applicable.
#
#
#                           Cadence Design Systems, Inc.
#                           2655 Seely Avenue
#                           San Jose, CA 95134
#                           Phone: 408.943.1234
#
# For technical assistance visit http://support.cadence.com.

# "Module name 'SRAM' differs from file name 'SRAM_rtl.sv'"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 1 -end_line 1 -start_column 1 -end_column 1 -module {SRAM} -tag FIL_MS_DUNM -arg {Module SRAM SRAM_rtl.sv} -comment {SRAM Module} -persistency_data {AAAAaHicLYtBCoAwDARHBT/gR7QK6q1fSWu9iR78Py6xG3YIDAt0QGSksIkB8xbdykFiZhJ3snwQF/fmJouJUzvoebl5+NOoQ/1brg+YAguz}

# "File name 'SRAM_rtl.sv' does not follow the recommended naming convention : should contain only the design-unit name"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 1 -end_line 1 -start_column 1 -end_column 1 -module {SRAM} -tag FIL_NF_NMCV -arg {SRAM_rtl.sv { : should contain only the design-unit name}} -comment {SRAM Module} -persistency_data {AAAAaHicLYtBCoAwDARHBT/gR7QK6q1fSWu9iR78Py6xG3YIDAt0QGSksIkB8xbdykFiZhJ3snwQF/fmJouJUzvoebl5+NOoQ/1brg+YAguz}

# "Tristate logic inferred in always block"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 165 -end_line 168 -start_column 3 -end_column 6 -instance {IM1.i_SRAM} -tag ALW_NR_TRIL -arg {always} -comment {SRAM Module} -persistency_data {AAABAHicLY7LisJQEETPILiYhUvXs9NxpVEYH4giuvYTNDGZUfAFCQwa/HdPrt6ii6K7q/oCNWBOl4yhHBGHysQPKQl9evKInfNIHoR5HCY7OeFXH9QpuHDl9T7eVb2m20f+5Rs5G10XTvqgwZdIvPXHgbOdbehUWLKWp1ZbteKbmfpoSmHCXk9qVrU1tl+6tTC/sJ/TUR/Uua7S/7e8cechJt74DPmZ99InSzQidQ==}

# "Potential overflow in assignment in design-unit/block 'alu'. LHS 'result' (unsigned) is of 32 bit(s), RHS '(operand1 + operand2)' (unsigned) can be of 33 bit(s) "
check_superlint -waiver -add -source_file {../src/alu.sv} -start_line 17 -end_line 17 -start_column 22 -end_column 43 -module {alu} -tag ASG_NR_POVF -arg {alu result unsigned 32 {(operand1 + operand2)} unsigned 33} -comment {Overflow is ignored} -persistency_data {AAAAknicVYtLDkBAEESfSJzDkrDwTUZsXIWZsUTE/aMGG1WpdOrTQAxMNGKPYWDGYXUdqxicU9OxUD1tK1m8nNM+fBglkHCxc/Ai+hRQkj2N59Ry019NSiH904ac8QYd6hKC}

# "Potential overflow in assignment in design-unit/block 'alu'. LHS 'result' (unsigned) is of 32 bit(s), RHS '(operand1 - operand2)' (unsigned) can be of 33 bit(s) "
check_superlint -waiver -add -source_file {../src/alu.sv} -start_line 19 -end_line 19 -start_column 22 -end_column 43 -module {alu} -tag ASG_NR_POVF -arg {alu result unsigned 32 {(operand1 - operand2)} unsigned 33} -comment {Overflow is ignored} -persistency_data {AAAAknicVYvdCkBAFIQ/Kc/hkqL81sqNV2F3XSJ5/8zixkzTaX4OEAMTjdhjGJhxWF3HKgbn1HQsVE/bShYv57QPH0YJJFzsHLyIPgUUZE/jObXc9FeTUkr/tCFnvAEeGBKE}

# "Potential overflow in assignment in design-unit/block 'alu'. LHS 'mult_output' (unsigned) is of 64 bit(s), RHS '(mult_operand1 * mult_operand2)' (unsigned) can be of 128 bit(s) "
check_superlint -waiver -add -source_file {../src/alu.sv} -start_line 78 -end_line 78 -start_column 22 -end_column 51 -module {alu} -tag ASG_NR_POVF -arg {alu mult_output unsigned 64 {(mult_operand1 * mult_operand2)} unsigned 128} -comment {Overflow is ignored} -persistency_data {AAAAonicdYtLDkBQFEOPSKzD2Mg3IQzsRHiPkV+E/evDVJvmprct4AMtqVhQUtFjMbqWSXTOKskZiJ80kwyjnFXfLUp9IOBkY+eF98mhYeFiVt49jZFDi1X7hJBI+stT6huMSxaC}

# "Potential overflow in assignment in design-unit/block 'csr_reg_bank'. LHS 'registers[0]' (unsigned) is of 32 bit(s), RHS '(registers[0] + 32'd1)' (unsigned) can be of 33 bit(s) "
check_superlint -waiver -add -source_file {../src/csr_reg_bank.sv} -start_line 50 -end_line 50 -start_column 29 -end_column 49 -module {csr_reg_bank} -tag ASG_NR_POVF -arg {csr_reg_bank registers[0] unsigned 32 {(registers[0] + 32'd1)} unsigned 33} -comment {Overflow is ignored} -persistency_data {AAAAkHicLYzBCoJQFERPCH5Hu0A36jPq4cb/kBbZs2ilZP9PJ3QuA3fmzh0gA3oqrrScmUgE+SBycaKXO08vycRI49aairqRWh10kx05X2YWNhx2/lHw8ePFm9XMpFoZ7L1xpJTBlpMdNd0PsvIRHQ==}

# "Potential overflow in assignment in design-unit/block 'csr_reg_bank'. LHS 'registers[1]' (unsigned) is of 32 bit(s), RHS '(registers[1] + 32'h1)' (unsigned) can be of 33 bit(s) "
check_superlint -waiver -add -source_file {../src/csr_reg_bank.sv} -start_line 54 -end_line 54 -start_column 33 -end_column 53 -module {csr_reg_bank} -tag ASG_NR_POVF -arg {csr_reg_bank registers[1] unsigned 32 {(registers[1] + 32'h1)} unsigned 33} -comment {Overflow is ignored} -persistency_data {AAAAkHicLYzBCoJQFERPCH1HuyA32jPs4cb/CBfaM21VZP9PR3IuA3fmzh0gA1oKrlRcGEkEeSdSO9FLz8NLMjFwdqtMRd1IqQ66yY49X168+WO3ccWJjx8TTxYzo2rh5m/HgVwGW47MOs0PsxsRIg==}

# "Potential overflow in assignment in design-unit/block 'csr_reg_bank'. LHS 'registers[2]' (unsigned) is of 32 bit(s), RHS '(registers[2] + 32'h1)' (unsigned) can be of 33 bit(s) "
check_superlint -waiver -add -source_file {../src/csr_reg_bank.sv} -start_line 58 -end_line 58 -start_column 33 -end_column 53 -module {csr_reg_bank} -tag ASG_NR_POVF -arg {csr_reg_bank registers[2] unsigned 32 {(registers[2] + 32'h1)} unsigned 33} -comment {Overflow is ignored} -persistency_data {AAAAkHicLYzBCoJQFERPCH1HuyA32jPs4cb/CBfaM21VZP9PR3IuAzNz514gA1oKrlRcGEkEeSdSO9FNz8NNsjFwVlW2ommk1AfT5I89X168+WO3ccWJjxcTTxY7o27h5mXHgVwG9ZHZb80PszARIw==}

# "Potential overflow in assignment in design-unit/block 'csr_reg_bank'. LHS 'registers[3]' (unsigned) is of 32 bit(s), RHS '(registers[3] + 32'h1)' (unsigned) can be of 33 bit(s) "
check_superlint -waiver -add -source_file {../src/csr_reg_bank.sv} -start_line 64 -end_line 64 -start_column 37 -end_column 57 -module {csr_reg_bank} -tag ASG_NR_POVF -arg {csr_reg_bank registers[3] unsigned 32 {(registers[3] + 32'h1)} unsigned 33} -comment {Overflow is ignored} -persistency_data {AAAAkHicLYzBCoJQFERPCH1HuyA32jPs4cb/CBfaM21VZP9PR3IuA3fmzh0gA1oKrlRcGEkEeSdSO9FLz8NLMjFwdqtMRd1IqQ66yY49X168+WO3ccWJjx8TTxYzo2rh5l/HgVwGW47MtjU/s0URJA==}

# "Potential overflow in assignment in design-unit/block 'pc'. LHS 'pc_out' (unsigned) is of 32 bit(s), RHS '(pc_out + 32'd4)' (unsigned) can be of 33 bit(s) "
check_superlint -waiver -add -source_file {../src/pc.sv} -start_line 21 -end_line 21 -start_column 23 -end_column 37 -module {pc} -tag ASG_NR_POVF -arg {pc pc_out unsigned 32 {(pc_out + 32'd4)} unsigned 33} -comment {Overflow is ignored} -persistency_data {AAAAhHicLYxBDkAwFESfSBxD7CysaFUaGzcRaXXLgvsbZSZvM/P/ACWwENhxGCaiSLLLjFilUW0SkY1e9iLmj7f3MlRcHJx8Kn5e1UoDq9pbNw2dMAy02rDMDxRUD00=}

# "Potential overflow in assignment in design-unit/block 'addr_gen'. LHS 'next_pc' (unsigned) is of 32 bit(s), RHS '(reg1 + imm)' (unsigned) can be of 33 bit(s) "
check_superlint -waiver -add -source_file {../src/addr_gen.sv} -start_line 10 -end_line 10 -start_column 35 -end_column 47 -module {addr_gen} -tag ASG_NR_POVF -arg {addr_gen next_pc unsigned 32 {(reg1 + imm)} unsigned 33} -comment {Overflow is ignored} -persistency_data {AAAAgHicLYxLCoBADEOfCB7C1SwVNxXxt/Mso6O4EEW8P8ZPQmnSNgViYGCkY8Zj9K+upUy9Imhi8qW2rVQrBrlG80ne6970I+Fi5+BD9NeDlIxTmUUpR6Fa2cQcdwN5VQ2n}

# "Potential overflow in assignment in design-unit/block 'addr_gen'. LHS 'next_pc' (unsigned) is of 32 bit(s), RHS '(pc + imm)' (unsigned) can be of 33 bit(s) "
check_superlint -waiver -add -source_file {../src/addr_gen.sv} -start_line 10 -end_line 10 -start_column 50 -end_column 60 -module {addr_gen} -tag ASG_NR_POVF -arg {addr_gen next_pc unsigned 32 {(pc + imm)} unsigned 33} -comment {Overflow is ignored} -persistency_data {AAAAfHicLYw7CoBAEEOfCB7B2lKxGRFdxcaz7LqChWjh/TF+EsIkmWGAFJgJDKx4jPH1nZxptkQ1ptxo6+ScGJV69Yuy173pR8bFwcmH5NeDnFJ9oKCWNnaxYroBQYYNIg==}

# "The case items of the case statement in design-unit read_aligner cover all the numerical values of the case expression. The default statement is not required"
check_superlint -waiver -add -source_file {../src/read_aligner.sv} -start_line 12 -end_line 23 -start_column 5 -end_column 12 -module {read_aligner} -tag CAS_NR_DEFA -arg {read_aligner} -comment {Keep for statement stability} -persistency_data {AAADAnicrZLBSsNAEIY/EXwETx68qeChm1qbRgQPPoKIIFJSNwFBrNb04Nv7bZIKUqgHs8Mws9mZ/9vdLLAP3FCTM2XChdmEmXFMaSx51oPzmZY7Gxlrv1RWdHlmBgc0LHmnG3u9p3HOmjde+DBWHLeKn2anxqiteFSvUO2JM+uPrPltGScsXB9ZBXdb6xtbqZo05+6jdNaYLfgyJu61Hv3e6Ev30sid9tyrndzQcu8H5AZvufA+d5NDf+KHAcnpbxUqX/7JDoOzx61m5mvq2Nua0d7ajjWvdiT+7T/4uSeJ3mFiHf70Vb7GuHmF30rFX/A=}

# "In module 'SRAM', using a bit-wise operation in a conditional expression '(~WEB0)' is not recommended"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 126 -end_line 126 -start_column 11 -end_column 16 -module {SRAM} -tag CND_NR_BWOP -arg {SRAM (~WEB0)} -comment {SRAM Module} -persistency_data {AAAAcnicLYsxDkBAFESfSFQuomNJ0InEGdS7a7UUamc3PjOZ17z/gRyYqEkMosPbktqzEWhpxJEo78TOvDcTxcCuPyi4ODj5kv17U3KzsjDrrnoAE8cM8w==}

# "In module 'SRAM', using a bit-wise operation in a conditional expression '(~WEB1)' is not recommended"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 135 -end_line 135 -start_column 11 -end_column 16 -module {SRAM} -tag CND_NR_BWOP -arg {SRAM (~WEB1)} -comment {SRAM Module} -persistency_data {AAAAcnicLYwxDkBAFESfSFQuomNJ0InEGdS7a7UUamc3PjOZ17z8D+TARE1iEB3eltSejUBLI45EeSd25r2ZKAZ23UHBxcHJl+zfm5KblYVZn6oHE8oM9A==}

# "In module 'SRAM', using a bit-wise operation in a conditional expression '(~WEB2)' is not recommended"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 144 -end_line 144 -start_column 11 -end_column 16 -module {SRAM} -tag CND_NR_BWOP -arg {SRAM (~WEB2)} -comment {SRAM Module} -persistency_data {AAAAcnicLYsxDkBAFESfSFQuomNJ0InEGdS7a7UUamc3PjOZ17wMkAMTNYlBdHhbUns2Ai2NOBLlndiZ92aiGNj1g4KLg5Mv2b83JTcrC7Oe1QMTzQz1}

# "In module 'SRAM', using a bit-wise operation in a conditional expression '(~WEB3)' is not recommended"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 153 -end_line 153 -start_column 11 -end_column 16 -module {SRAM} -tag CND_NR_BWOP -arg {SRAM (~WEB3)} -comment {SRAM Module} -persistency_data {AAAAcnicLYsxDkBAFESfSFQuomNJ0InEGdS7a7UUamc3PjOZ17wMkAMTNYlBdHhbUns2Ai2NOBLlndiZ92aiGNj1g4KLg5Mv2b83JTcrC7Me1QMT0Az2}

# "Array 'Memory_byte1' is automatically blackboxed"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 33 -end_line 33 -start_column 35 -end_column 47 -instance {IM1.i_SRAM} -tag SIG_IS_ATBX -arg {Array Memory_byte1} -comment {SRAM Module} -persistency_data {AAAAgHicJYxBDkAwEEWfSBzCyhEoCXYu4AzSVu2EiE1v72v/ZN7mzXygBBZaApNosGmDZmTH0dOJM17eiEPyNhkvOg79QcXLxU1OQW7+U7Oq7ZR9iGz6iLoN6m0+6h0QKw==}

# "Array 'Memory_byte2' is automatically blackboxed"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 34 -end_line 34 -start_column 35 -end_column 47 -instance {IM1.i_SRAM} -tag SIG_IS_ATBX -arg {Array Memory_byte2} -comment {SRAM Module} -persistency_data {AAAAgHicJYxBDkAwEEWfSBzCyhEoCXYu4AzSVu2EiE1v72v/ZN7mzXygBBZaApNosGmDZmTH0dOJM17eiEPyNhkvOg79QcXLxU1OQW7+U7Oq7ZR9iGz6iLoN6mk+6iAQLA==}

# "Array 'Memory_byte3' is automatically blackboxed"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 35 -end_line 35 -start_column 35 -end_column 47 -instance {IM1.i_SRAM} -tag SIG_IS_ATBX -arg {Array Memory_byte3} -comment {SRAM Module} -persistency_data {AAAAgHicJYxBDkAwEEWfSBzCyhEoCXYu4AzSVu2EiE1v72tnMm/z5n+gBBZaApNosOmCdmTH0dOJM17eiEPyNhkvOg7loOLl4iZPQW7+p2ZV2yn7ENmUiPoNyjcf6iMQLQ==}

# "Array 'Memory_byte0' is automatically blackboxed"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 32 -end_line 32 -start_column 35 -end_column 47 -instance {IM1.i_SRAM} -tag SIG_IS_ATBX -arg {Array Memory_byte0} -comment {SRAM Module} -persistency_data {AAAAgHicJYxBDkAwEEWfSBzCyhEoCXYu4AzSVu2EiE1v72tnMm/z5n+gBBZaApNosOmCdmTH0dOJM17eiEPyNhkvOg7loOLl4iZPQW7+p2ZV2yn7ENmUiPoNSjUf6hoQKg==}

# "Variable 'A' used as index in expression 'Memory_byte0[A]' should be 2-state data type"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 128 -end_line 128 -start_column 9 -end_column 24 -module {SRAM} -tag IDX_NR_DTTY -arg {A Memory_byte0[A]} -comment {SRAM Module} -persistency_data {AAAAhnicLYxRCkBQEEUPyjreEngU/liAFUjief5E8mP3bo+Z5jR15g6QAC0Znlq0zGG8umJloSAXG5y8Fcvg52CcuLApByk3BydfRZr43w29vu2yFw+TEo9uvVIDHSPmBU/bESg=}

# "Variable 'A' used as index in expression 'Memory_byte1[A]' should be 2-state data type"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 137 -end_line 137 -start_column 9 -end_column 24 -module {SRAM} -tag IDX_NR_DTTY -arg {A Memory_byte1[A]} -comment {SRAM Module} -persistency_data {AAAAhnicLYxRCkBAFEUPyjpmCQyFPxZgBZIY408kP3bvNrzXPb26714gAVoyPLVomYO8tmJloSAXG5x8K5bBn4PjxIVNOUi5OTj5JpLi/zb0atvlXjxMSjz69eod6BgxL0/kESk=}

# "Variable 'A' used as index in expression 'Memory_byte2[A]' should be 2-state data type"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 146 -end_line 146 -start_column 9 -end_column 24 -module {SRAM} -tag IDX_NR_DTTY -arg {A Memory_byte2[A]} -comment {SRAM Module} -persistency_data {AAAAhnicLYxRCkBAFEUPyjpmCQyFPxZgBZIY408kP3bvNrzXPb26714gAVoyPLVomYO8tmJloSAXG5x8K5bBn4PjxIVNOUi5OTj5JpLi/zb0atvlXjxMSjz69eoZ6BgxL0/tESo=}

# "Variable 'A' used as index in expression 'Memory_byte3[A]' should be 2-state data type"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 155 -end_line 155 -start_column 9 -end_column 24 -module {SRAM} -tag IDX_NR_DTTY -arg {A Memory_byte3[A]} -comment {SRAM Module} -persistency_data {AAAAhnicLYxRCkBQEEUPyjreEngU/liAFUjief5E8mP3bo+Z5jR15g6QAC0Znlq0zGG8umJloSAXG5y8Fcvg52CcuLApByk3BydfRZr43w29vu2yFw+TEo9uvfIDHSPmBU/2ESs=}

# "Variable 'waddr' used as index in expression 'register_bank[waddr]' should be 2-state data type"
check_superlint -waiver -add -source_file {../src/regfile.sv} -start_line 27 -end_line 27 -start_column 13 -end_column 33 -module {regfile} -tag IDX_NR_DTTY -arg {waddr register_bank[waddr]} -comment {It is a register write addr decoder} -persistency_data {AAAAkHicLYvbCkBgEIQ/Kc/h2hVy+N15D0kOf5JCKK9vHGaabWdnFnCBklQcsMQYEnJ6CkI6zUjOKLVyqWTI3mZHqyzUrRXB42Rl44Pz60HArv7IxKGOlWve74WZikvbIO7U+DfRPBMH}

# "Variable 'decoded_waddr' used as index in expression 'registers[decoded_waddr]' should be 2-state data type"
check_superlint -waiver -add -source_file {../src/csr_reg_bank.sv} -start_line 45 -end_line 45 -start_column 13 -end_column 37 -module {csr_reg_bank} -tag IDX_NR_DTTY -arg {decoded_waddr registers[decoded_waddr]} -comment {It is a register write addr decoder} -persistency_data {AAAAmHicLY1bDoJQDESPMWEdLgEBA/fPfRBj0F4NXxAwcfscH51M+phpC+yBMyUdDScyQS3vJFqRVAYeKqHjRmXV6EpOE0f72ml4o+DFxMwvdn9+omJx48nIqifbrfTuZL9M3xxceXsxxMKFwwZrbRSH}

# "Input/inout port 'ex_mem_op[2:0]' declared in the design-unit 'hazard_eliminator' has no load"
check_superlint -waiver -add -instance {_cpu._hazard_eliminator} -tag INP_NO_LOAD -arg {ex_mem_op[2:0] hazard_eliminator} -comment {Keep for lowering routing complexity } -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Input/inout port 'm1_mem_op[2:0]' declared in the design-unit 'hazard_eliminator' has no load"
check_superlint -waiver -add -instance {_cpu._hazard_eliminator} -tag INP_NO_LOAD -arg {m1_mem_op[2:0] hazard_eliminator} -comment {Keep for lowering routing complexity } -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Input/inout port 'ex_mem_op[2:0]' declared in the design-unit 'forwarding_unit' has no load"
check_superlint -waiver -add -instance {_cpu._forwarding_unit} -tag INP_NO_LOAD -arg {ex_mem_op[2:0] forwarding_unit} -comment {Keep for lowering routing complexity} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Input/inout port 'm1_mem_op[2:0]' declared in the design-unit 'forwarding_unit' has no load"
check_superlint -waiver -add -instance {_cpu._forwarding_unit} -tag INP_NO_LOAD -arg {m1_mem_op[2:0] forwarding_unit} -comment {Keep for lowering routing complexity} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Input/inout port 'addr[31:16]' declared in the design-unit 'mmu' has no load"
check_superlint -waiver -add -instance {_cpu._mmu} -tag INP_NO_LOAD -arg {addr[31:16] mmu} -comment {Keep for wider memory space} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Input/inout port 'mem_op[2]' declared in the design-unit 'mmu' has no load"
check_superlint -waiver -add -instance {_cpu._mmu} -tag INP_NO_LOAD -arg {mem_op[2] mmu} -comment {Keep for lowering routing complexity} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Input/inout port 'addr[31:2]' declared in the design-unit 'read_aligner' has no load"
check_superlint -waiver -add -instance {_cpu._read_aligner} -tag INP_NO_LOAD -arg {addr[31:2] read_aligner} -comment {Keep for lowering routing complexity} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Input/inout port 'mem_op[4:3]' declared in the design-unit 'read_aligner' has no load"
check_superlint -waiver -add -instance {_cpu._read_aligner} -tag INP_NO_LOAD -arg {mem_op[4:3] read_aligner} -comment {Keep for lowering routing complexity} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Wire '_from_cpu_isram_addr[1:0]' declared in module 'top' does not drive any object, but is assigned at least once"
check_superlint -waiver -add -source_file {../src/top.sv} -start_line 20 -end_line 20 -start_column 13 -end_column 33 -module {top} -tag WIR_NO_READ -arg {_from_cpu_isram_addr[1:0] module top} -comment {Keep for further different memory addressing} -persistency_data {AAAAkHicLYxLCoAwDESfCB7GVa3iBzfeRKxFcCGKn/s7rSbMTGYSAqTAQElBixNbDF5qaIROsExKgqtiO8GyyNeRC3nIuNk5+Cr5ESpn1N2p7aZp1s0jXbmUTTEL/71c/wJUURHi}

# "Wire '_from_cpu_dsram_addr[1:0]' declared in module 'top' does not drive any object, but is assigned at least once"
check_superlint -waiver -add -source_file {../src/top.sv} -start_line 22 -end_line 22 -start_column 13 -end_column 33 -module {top} -tag WIR_NO_READ -arg {_from_cpu_dsram_addr[1:0] module top} -comment {Keep for further different memory addressing} -persistency_data {AAAAkHicLYxLCoAwDESfCB7GVa3iBzfeRFqLO1H83N9pNWFmMpMQIAcmaip6vNhiCFJDJwyCxSmJrkntBcsq3yau5KHgZufgq+xHrJJZd6e2m6ZFN480cClzKYv/g9z4AlPoEd0=}

# "Wire '_from_m2_wb_ppreg_csr_op_out[14:12]' declared in module 'cpu' does not drive any object, but is assigned at least once"
check_superlint -waiver -add -source_file {../src/cpu.sv} -start_line 117 -end_line 117 -start_column 13 -end_column 41 -module {cpu} -tag WIR_NO_READ -arg {_from_m2_wb_ppreg_csr_op_out[14:12] module cpu} -comment {Keep for lowering routing complexity} -persistency_data {AAAAoHicLYxbDoJAEATLmHgeYFVeP95kE3H1i0AU4vWpRSfpSaV7poEjcKOkoVYVD4adr5wp9AsCFznoVe67ac5LKZkkqbXjxMLEzG8Of+XpiDx5m47SaEvk63f0etZPvOSBjxz3jrxX+/oNhF8VIQ==}

# "Wire '_from_m2_wb_ppreg_pc_out' declared in module 'cpu' does not drive any object, but is assigned at least once"
check_superlint -waiver -add -source_file {../src/cpu.sv} -start_line 116 -end_line 116 -start_column 13 -end_column 37 -module {cpu} -tag WIR_NO_READ -arg {_from_m2_wb_ppreg_pc_out module cpu} -comment {Keep for debugging and further using(interrupt)} -persistency_data {AAAAmHicLYxbCoNAEARLAjmPrq+E/HgTQbP6JUpQcv2UaxpmqOmeGeAGdBQ8aK3AmzFxQ0Wun1NSy6VesA+mZ15I0SRKT3/c2VnZuJT961SgZ+JjukhLmr9e925v+pE58WhfOfzz+gHfIxNm}

# "In design-unit 'SRAM', port 'WEB0' is not declared in defined order"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 21 -end_line 21 -start_column 14 -end_column 18 -module {SRAM} -tag PRT_NR_ORDR -arg {SRAM WEB0} -comment {SRAM Module} -persistency_data {AAAAcHicLYtBDkBAEARLJA5ew5IgLrKJNzjvrnXl4P/Rhu50XWoGKIGFhswoOoItqwM7kY5WnEjyTuzNBzNJjBz6g4qbk4svxb83NRsrXlfzA/fODIU=}

# "In design-unit 'SRAM', port 'CK' is not declared in defined order"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 25 -end_line 25 -start_column 14 -end_column 16 -module {SRAM} -tag PRT_NR_ORDR -arg {SRAM CK} -comment {SRAM Module} -persistency_data {AAAAbHicLYsxCoAwFEOfFDyPVkGLi9DRU7S1rjr0/hi+JuQtjwAO2BmorKIn2aq6cJKZGMVAkffibD6ZKWLm0g96GjcPX7p/mIkcbC/GJgwB}

# "In design-unit 'SRAM', port 'CS' is not declared in defined order"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 26 -end_line 26 -start_column 14 -end_column 16 -module {SRAM} -tag PRT_NR_ORDR -arg {SRAM CS} -comment {SRAM Module} -persistency_data {AAAAbHicLYtBCoAwEANHCr5Hq6DFi9An+IK21qse+n8MqwmZyxDAATsDlVX0JFtVF04yE6MYKPJenM0nM0XMXPpBT+Pm4Uv3DzORg+0Fxj4MCQ==}

# "In design-unit 'SRAM', port 'OE' is not declared in defined order"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 27 -end_line 27 -start_column 14 -end_column 16 -module {SRAM} -tag PRT_NR_ORDR -arg {SRAM OE} -comment {SRAM Module} -persistency_data {AAAAbHicLYsxCoAwFEOfFDyPVkGLi0tnz9DWuurQ+2P4mpC3PAI4YGegsoqeZKvqwklmYhQDRd6Ls/lkpoiZSz/oadw8fOn+YeYgsr3GUAwH}

# "In design-unit 'SRAM', port 'DO0' is not declared in defined order"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 11 -end_line 11 -start_column 14 -end_column 17 -module {SRAM} -tag PRT_NR_ORDR -arg {SRAM DO0} -comment {SRAM Module} -persistency_data {AAAAbnicLYtBDkAwFERfSMRhLCgJdhb2ztBWbduF+8f4zGTe5v0P1MBGT2IRHd6W1JmTwMggrkR5J07mvZkoBi79QcNNpvCl+vemZefQTfcA3oYMKw==}

# "In design-unit 'SRAM', port 'A0' is not declared in defined order"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 19 -end_line 19 -start_column 14 -end_column 16 -module {SRAM} -tag PRT_NR_ORDR -arg {SRAM A0} -comment {SRAM Module} -persistency_data {AAAAbHicLYs5DoAwEANHIPEaChKQCB15Si5aKPi/Yi145WlmDYzAyUIjiJ5kbbqdSmbFiQdF3oub+WSmiJlLO5h4uXn4MvzFTNTH3AHF3gvX}

# "In design-unit 'SRAM', port 'A1' is not declared in defined order"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 19 -end_line 19 -start_column 17 -end_column 19 -module {SRAM} -tag PRT_NR_ORDR -arg {SRAM A1} -comment {SRAM Module} -persistency_data {AAAAbHicLYy7CoAwEAQHBb/GwkTB2JlPyctWC/+fLKd77DTDLTACJwuNIHqStel2KpkVJx4UeS9u5pOZImYu/cHEy83Dl+EvZqI25g7F4QvY}

# "Macro 'WB_UNIT' is unused"
check_superlint -waiver -add -source_file {../include/wb_unit.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {WB_UNIT} -comment {Is used by include protection} -persistency_data {AAAAYnicXYxBCoAwDAQHBN9Ta8Xm5lcs2qse/D8OHg1kd5ksAQZgo7Cy0wk1ODmoeqWxMLuN/JHC5C2bkq0k77Lwx8jDxc1vXi4hCkY=}

# "Macro 'ADDR_GEN' is unused"
check_superlint -waiver -add -source_file {../include/addr_gen.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {ADDR_GEN} -comment {Is used by include protection} -persistency_data {AAAAYnicXYxJCoAwEAQLBN/jOtGbX0lMvOrB/2OdHeguGooBOuBgYKER9s7EaGY75CaryRSSXriybuLUKazy8kfPy83D7z4GtAof}

# "Macro 'ALU' is unused"
check_superlint -waiver -add -source_file {../include/alu.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {ALU} -comment {Is used by include protection} -persistency_data {AAAAYnicXYxBDoAgDAQnMeE9gJXgja8g6hUO/j+uHmkzm026W2ABCk17YERu9h8j4bmoUi+f2Fh1rwSyCGp8ZGVP/XA8dAbTvCq2Cic=}

# "Macro 'BRANCH_COMPARATOR' is unused"
check_superlint -waiver -add -source_file {../include/branch_comparator.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {BRANCH_COMPARATOR} -comment {Is used by include protection} -persistency_data {AAAAYnicXYk7CoAwFAQHBM/jiwS18yoS81otvD+OrVvs7AcYgJ2TlUpjk0lQONzC3vQq0yXllwszk3+XwWKCkYeLm59eNLIKbQ==}

# "Macro 'CPU' is unused"
check_superlint -waiver -add -source_file {../include/cpu.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {CPU} -comment {Is used by include protection} -persistency_data {AAAAYnicXco7CoBAFEPRA4Lr0fGD07kVdbTVwv3jY0oDIZdL0GBVdAbJEZSNeme0BC3V5mhy2c2xXdjZZgqT64PW6/b45QMoPgox}

# "Macro 'CSR_ALU' is unused"
check_superlint -waiver -add -source_file {../include/csr_alu.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {CSR_ALU} -comment {Is used by include protection} -persistency_data {AAAAYnicXYxLCoAwDAUHBO+T+qs7r9L62erC+9PBpYFHMhl4QAdsJIKByszFyEKWyse7rprVK/xP+sOddacJudjR83Lz8JsGF8kKAg==}

# "Macro 'CSR_REG_BANK' is unused"
check_superlint -waiver -add -source_file {../include/csr_reg_bank.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {CSR_REG_BANK} -comment {Is used by include protection} -persistency_data {AAAAYnicXYpLCoAwFAMHBM9TP7W68ypt7VoX3h9HlyaEPOYF6ICdxkRi5NArxSuaWScqCxvBztIgGezybV+S/UPPzcnFTw8mtgpX}

# "Macro 'DECODER' is unused"
check_superlint -waiver -add -source_file {../include/decoder.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {DECODER} -comment {Is used by include protection} -persistency_data {AAAAYnicXYwxDoAwDMQsIfEeSoHAxlcoLSsM/F94JpYS33ABOmBnZiBxuTOV8C6sHJxMkvRM00IrMpoam4Td6o+el5uH33wPlgoH}

# "Macro 'D_E_PPREG' is unused"
check_superlint -waiver -add -source_file {../include/d_e_ppreg.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {D_E_PPREG} -comment {Is used by include protection} -persistency_data {AAAAYnicXYxLCoAwEEMfCJ7HT6ntzqvUfra68P741k7IkEzCABNwkghkedAociPS9Y3B7nVVdar7Eslu1hfTKBZ/zLzcPPzmA0x5CwI=}

# "Macro 'E_M1_PPREG' is unused"
check_superlint -waiver -add -source_file {../include/e_m1_ppreg.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {E_M1_PPREG} -comment {Is used by include protection} -persistency_data {AAAAYnicXYw7CoBADAUHBM8TP7jaeZUVY6uF98dhSxMy85oXoAN2DoKRbLzcymoKPbG1q8wUFpm62BhkcOr0R8/LzcNvPiO4CiU=}

# "Macro 'F1_F2_PPREG' is unused"
check_superlint -waiver -add -source_file {../include/f1_f2_ppreg.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {F1_F2_PPREG} -comment {Is used by include protection} -persistency_data {AAAAYnicXYpBCoAwEAMHBN/Tba3iza+I1as9+H8cPJqFTNgEGICNi0wjccpDFpmpXmMxhYvZfzCxmoseX1vZbWDk4abz0wsPzwnE}

# "Macro 'F2_D_PPREG' is unused"
check_superlint -waiver -add -source_file {../include/f2_d_ppreg.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {F2_D_PPREG} -comment {Is used by include protection} -persistency_data {AAAAYnicXYwxCoBADAQHBN+jpwav8yt6mFYL/49ja5Yk7CwJ0AEbAwsrM4WDpLmDU/L50azYVRIqZVU/sXsRzvRHz8PFza9eG7cKNg==}

# "Macro 'FORWARDING_UNIT' is unused"
check_superlint -waiver -add -source_file {../include/forwarding_unit.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {FORWARDING_UNIT} -comment {Is used by include protection} -persistency_data {AAAAYnicXYxJCoAwEAQLBN8TNQu5+RUx8WoO/h8Lj/bAdDUzNDABO5WVRCdKB4UgVzYWd9Evc+B04peT1Mnem//NjpmHm8FPLyChCmg=}

# "Macro 'HAZARD_ELIMINATOR' is unused"
check_superlint -waiver -add -source_file {../include/hazard_eliminator.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {HAZARD_ELIMINATOR} -comment {Is used by include protection} -persistency_data {AAAAYnicXYw7CoBADAUHBM8jrpq18yrGT6uF98fB0gyZBwk8oAEWNnqprIQOdklGqRzMTDopdG58eUp6Lf4GO1oeLm5+8wIw+wpq}

# "Macro 'M1_M2_PPREG' is unused"
check_superlint -waiver -add -source_file {../include/m1_m2_ppreg.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {M1_M2_PPREG} -comment {Is used by include protection} -persistency_data {AAAAYnicXYxBCoAwEMQCgu+prRW9+RVt8doe/D9Gj+5CyLLDAAOwk7mozG7mIOqJwqadcpHhs+I3eCeTUb6JidWOkZtG5zcPJiwJ+Q==}

# "Macro 'M2_WB_PPREG' is unused"
check_superlint -waiver -add -source_file {../include/m2_wb_ppreg.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {M2_WB_PPREG} -comment {Is used by include protection} -persistency_data {AAAAYnicXYwxDoAgEAQnMfFBgKCdX1ECLRT+P46tV2xmNpsDFuBkJ1BoJClxUIlcdlXucmCzj/q3alo3s3ZLxR8rD4PJ714l/wp4}

# "Macro 'MEM_DWORD' is unused"
check_superlint -waiver -add -source_file {../include/internal_op.svh} -start_line 39 -end_line 40 -start_column 5 -end_column 1 -tag MAC_NO_USED -arg {MEM_DWORD} -comment {Is used by include protection} -persistency_data {AAAAnnicLYyxDoJAEESfmvAddLZ3hxrsKLA0JDaUgoiJDVr4//EJ7mSyOzu7A2yAioLAngOJnqMYiZQ8VIG728E56A8i6t7UOz/6+aowI+PDizdLrf78VaIzY/TuyWTPOXOSV2paGi72fEZia3IUsKb7Arn5EnU=}

# "Macro 'MMU' is unused"
check_superlint -waiver -add -source_file {../include/mmu.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {MMU} -comment {Is used by include protection} -persistency_data {AAAAYnicXYwxDoAgAAMvMeE9AiK4+RVAXXXw/6Ew0iZtrkOBBTgJ8o7HEqkccqckihQ2Mre2gONRVuU1yLGqrT4MPy8fkxr/wQmv}

# "Macro 'OPCODE_LIST' is unused"
check_superlint -waiver -add -source_file {../include/opcode.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {OPCODE_LIST} -comment {Is used by include protection} -persistency_data {AAAAYnicXcoxCoAwFIPhDwTPo6hYN6+i1q46eH98xc3ATxISNFgddpveJMnm8DNSMgaDEq0+Sny+PVliK7qgdlqPy+2nF1R8Cws=}

# "Macro 'PC' is unused"
check_superlint -waiver -add -source_file {../include/pc.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {PC} -comment {Is used by include protection} -persistency_data {AAAAYnicXYxBCoAwDAQHBN+TqrUe/Yq2eK0H/4+DRxMIO+xugAHYCRKLt3Cwcrozl7pJG5NOqEMqJhPZRHyNKlV/jDx0bn7zAg8+Cdc=}

# "Macro 'READ_ALIGNER' is unused"
check_superlint -waiver -add -source_file {../include/read_aligner.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {READ_ALIGNER} -comment {Is used by include protection} -persistency_data {AAAAYnicXYs7CoBAFMQCgufR9budVxFmbbXw/pjaKR55GQbogIOdk8pCYfVWBkY2ZvnSRRO5Mfk329hFKu6ihZ6Xm4dfPhuqCmc=}

# "Macro 'REGFILE' is unused"
check_superlint -waiver -add -source_file {../include/regfile.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {REGFILE} -comment {Is used by include protection} -persistency_data {AAAAYnicXYxBCoAwEAMHBN9TqxW9+ZW2tlc9+H8cPJohELJhgQE4iLKQ6UysMpsb4etONvsqO4Wko4vitZmym+6PkYeLm59eQMoK3Q==}

# "Macro 'SRAM_WRAPPER' is unused"
check_superlint -waiver -add -source_file {../include/SRAM_wrapper.svh} -start_line 2 -end_line 3 -start_column 1 -end_column 1 -tag MAC_NO_USED -arg {SRAM_WRAPPER} -comment {Is used by include protection} -persistency_data {AAAAYnicXcs7DoAwEAPRJyFxHhCfhI6rEJQaCu4vNpRsNR570WG3qEabM2gKzg6rEm42RCpStDXsFpy/TTMpPpqh97jcfvcCL0AKdw==}

# "Synthesizing 'x'/'z' value '1'bz' in module 'SRAM'"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 167 -end_line 167 -start_column 42 -end_column 46 -module {SRAM} -tag MOD_NR_SYXZ -arg {1'bz module SRAM} -comment {SRAM Module} -persistency_data {AAAAcHicLYxBDkAwEEVfI7FwEVtKgp2rtFVbFl1J3N03/Ml/mzczQAWsdGRm0ROsWTOxERnoxYUk78XRfDCTxMiuO6gpHJx8cX/fNPrQau/ifgD3Zgzt}

# "Flip-flop 'wb_src_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m2_wb_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m2_wb_ppreg} -tag FLP_NO_ASRT -arg {wb_src_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFhnicnZLNTsJAFIWPMWHpE7hgpejCtCoF/EmIMS5YuPAFGmGQEIs0bY07n91zp4SO3mmFdjJtZ+Z859LLAXAIYIwhAlxjgBCG49WOAWdox4hDVjOOEfrUXnIVYU5myqehRwcF1khRXgebKVeP/j2erJGTMFjw3qVTgnec8W3K9QJLfFB7wnU5lngj9c3djFyhlHdbZUXkiPm7YqsQJmbNTz67VN/zHuKU9QPckn9UvMGK/itS0oGCs6T/ulzx6yufofLJ6JKTSP5lLzysUUzfISJFfLErMetl7KiuVpGBIlMv0fxtM1sptv+07m7ksA+17D7dHde67N7loy07Zy4kq8fOTmJT+TtbTy2ypRVS+6V1yup04nqzV+bcM6HPd0qd7PlrNSXOPfPX8qUu3ah1raa8uWdCP7dMnF8ljpNW6fNp/DnslG8/rAbBXQ==}

# "Flip-flop 'pc_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/d_e_ppreg.sv} -start_line 29 -end_line 83 -start_column 7 -end_column 4 -module {d_e_ppreg} -tag FLP_NO_ASRT -arg {pc_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAMjHicpVZNT8JAEH3GhKNHTx44GMWL4aMgfoYYTx48ePDaAAUkgpACMV787b4tSgu7M91qm263O/vezs7ORwHsA+ggQhd1NPlEbFsIcIk+emigzXeV341Ebu4AQ1xQPmCvxr5BAiUsMcMc62vv5zFXhfwVSmZYEBNhxLZM1gnecMZej98jjPHOuSf8Xt9jMlfwxdGYuKU182YzM0UsEFKbMJlhMCHXXPFd5uxbtjWccv0qrok/t/AxZbuIZgZRtRBz7mIXYeyUYmwtjY0GXKtLHSNq9D98PQffsvBToqcJaq7u1kZ2eWIrARmoyA+eXMgTiZ32SpFtC9lPUO41a1wpxQaO8zTekmehg838QWJR4CgzMkl8dtvzOg4/iCmbJe0SnxvvNT5orDaxvPfF4vD3YnmG2c+VyOzy7+yYjnb5enbMoJ9FdJ7XS/IirPZJS3LD+iiyahHikulsWtS4ZDqbFkkumc6mRZdLZtjuFf9yx9vuuGE5tNC/0WfngDQK11E1TKy2wKsVVQ+ibsVqg53BtBhqqhlMi5/tTCRrX6xm+PLkZcY7kce3hsgMvrVEZvCtKR2Rwb+22FU4z+e3LSl7+7FD4qo5T6IGf6kXRqe6sid3ndBRUn3QM1DRulCELb8e6PnMtw7oLL75X2fxzfs6i2++z/uP0PO87vH2/1Zp3fsGM1mauA==}

# "Flip-flop 'rd_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/d_e_ppreg.sv} -start_line 29 -end_line 83 -start_column 7 -end_column 4 -module {d_e_ppreg} -tag FLP_NO_ASRT -arg {rd_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAMjHicpVZNT8JAEH3GhKNHTx44GMWL4aMgfoYYTx48ePDaAAUkgpACMV787b4tSgu7M91qm263O/vezs7ORwHsA+ggQhd1NPlEbFsIcIk+emigzXeV341Ebu4AQ1xQPmCvxr5BAiUsMcMc62vv5zFXhfwVSmZYEBNhxLZM1gnecMZej98jjPHOuSf8Xt9jMlfwxdGYuKU182YzM0UsEFKbMJlhMCHXXPFd5uxbtjWccv0qrok/t/AxZbuIZgZRtRBz7mIXYeyUYmwtjY0GXKtLHSNq9D98PQffsvBToqcJaq7u1kZ2eWIrARmoyA+eXMgTiZ32SpFtC9lPUO41a1wpxQaO8zTekmehg838QWJR4CgzMkl8dtvzOg4/iCmbJe0SnxvvNT5orDaxvPfF4vD3YnmG2c+VyOzy7+yYjnb5enbMoJ9FdJ7XS/IirPZJS3LD+iiyahHikulsWtS4ZDqbFkkumc6mRZdLZtjuFf9yx9vuuGE5tNC/0WfngDQK11E1TKy2wKsVVQ+ibsVqg53BtBhqqhlMi5/tTCRrX6xm+PLkZcY7kce3hsgMvrVEZvCtKR2Rwb+22FU4z+e3LSl7+7FD4qo5T6IGf6kXRqe6sid3ndBRUn3QM1DRulCELb8e6PnMtw7oLL75X2fxzfs6i2++z/uP0PO87vH2/1Zp3fsGM1mauA==}

# "Flip-flop 'reg2_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/d_e_ppreg.sv} -start_line 29 -end_line 83 -start_column 7 -end_column 4 -module {d_e_ppreg} -tag FLP_NO_ASRT -arg {reg2_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAMjHicpVZNT8JAEH3GhKNHTx44GMWL4aMgfoYYTx48ePDaAAUkgpACMV787b4tSgu7M91qm263O/vezs7ORwHsA+ggQhd1NPlEbFsIcIk+emigzXeV341Ebu4AQ1xQPmCvxr5BAiUsMcMc62vv5zFXhfwVSmZYEBNhxLZM1gnecMZej98jjPHOuSf8Xt9jMlfwxdGYuKU182YzM0UsEFKbMJlhMCHXXPFd5uxbtjWccv0qrok/t/AxZbuIZgZRtRBz7mIXYeyUYmwtjY0GXKtLHSNq9D98PQffsvBToqcJaq7u1kZ2eWIrARmoyA+eXMgTiZ32SpFtC9lPUO41a1wpxQaO8zTekmehg838QWJR4CgzMkl8dtvzOg4/iCmbJe0SnxvvNT5orDaxvPfF4vD3YnmG2c+VyOzy7+yYjnb5enbMoJ9FdJ7XS/IirPZJS3LD+iiyahHikulsWtS4ZDqbFkkumc6mRZdLZtjuFf9yx9vuuGE5tNC/0WfngDQK11E1TKy2wKsVVQ+ibsVqg53BtBhqqhlMi5/tTCRrX6xm+PLkZcY7kce3hsgMvrVEZvCtKR2Rwb+22FU4z+e3LSl7+7FD4qo5T6IGf6kXRqe6sid3ndBRUn3QM1DRulCELb8e6PnMtw7oLL75X2fxzfs6i2++z/uP0PO87vH2/1Zp3fsGM1mauA==}

# "Flip-flop 'wb_src_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/d_e_ppreg.sv} -start_line 29 -end_line 83 -start_column 7 -end_column 4 -module {d_e_ppreg} -tag FLP_NO_ASRT -arg {wb_src_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAMjHicpVZNT8JAEH3GhKNHTx44GMWL4aMgfoYYTx48ePDaAAUkgpACMV787b4tSgu7M91qm263O/vezs7ORwHsA+ggQhd1NPlEbFsIcIk+emigzXeV341Ebu4AQ1xQPmCvxr5BAiUsMcMc62vv5zFXhfwVSmZYEBNhxLZM1gnecMZej98jjPHOuSf8Xt9jMlfwxdGYuKU182YzM0UsEFKbMJlhMCHXXPFd5uxbtjWccv0qrok/t/AxZbuIZgZRtRBz7mIXYeyUYmwtjY0GXKtLHSNq9D98PQffsvBToqcJaq7u1kZ2eWIrARmoyA+eXMgTiZ32SpFtC9lPUO41a1wpxQaO8zTekmehg838QWJR4CgzMkl8dtvzOg4/iCmbJe0SnxvvNT5orDaxvPfF4vD3YnmG2c+VyOzy7+yYjnb5enbMoJ9FdJ7XS/IirPZJS3LD+iiyahHikulsWtS4ZDqbFkkumc6mRZdLZtjuFf9yx9vuuGE5tNC/0WfngDQK11E1TKy2wKsVVQ+ibsVqg53BtBhqqhlMi5/tTCRrX6xm+PLkZcY7kce3hsgMvrVEZvCtKR2Rwb+22FU4z+e3LSl7+7FD4qo5T6IGf6kXRqe6sid3ndBRUn3QM1DRulCELb8e6PnMtw7oLL75X2fxzfs6i2++z/uP0PO87vH2/1Zp3fsGM1mauA==}

# "Flip-flop 'registers' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/csr_reg_bank.sv} -start_line 37 -end_line 68 -start_column 7 -end_column 4 -module {csr_reg_bank} -tag FLP_NO_ASRT -arg {registers} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFxnictVRNS8NAEH0i9OjRk0gPoim95Es0aMGD+As8FFRi0k0/tFhJA7n52327m9aYdLu2YIZNd3Zm38x7GQrgEMAdXFwjxCUyCARcI0S4okWMJBgzIpiRwucuZFbE0wge/YCnghgdFFjgE/o5qJZ8HOI7jCywVPgTvrusMMc7etyl9CeY4YO55/S1zVjVwRdPc94rWpn368yVjVkh5x0ZLxRCFwMuFzeVd8sVVl6f1tuIs7K8qiarZ6qLJ3ovCkfiBmR/QT4SHzha38tYXypyUjuZK+6/GZy2KmrOpUKQvT3v1JvgbkQNhFI5Jk7CX8HoT88l/YR3EtXzWQt3c6fpTn24tXrmeL+moKe6GRqraF3MWIPa95jioWFSyTcj9jYmnoWJ12AyrZg8WpiUVDRWWDG/RKxUXqqZ1Uw8YqV8N2d+Pxa+hYVvYNGez+aE/xfPVytP80T4f5yI3Fpjm6aBRdNgb02PjZH2P0xH774BD0e5lw==}

# "Flip-flop 'csr_dataout_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/e_m1_ppreg.sv} -start_line 28 -end_line 69 -start_column 7 -end_column 4 -module {e_m1_ppreg} -tag FLP_NO_ASRT -arg {csr_dataout_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAJgnicnVU9TwJBEH3GhNLSyoLCKDaGD/kwfoQYC2NhYWF7Ae5AIsgFjhgbf7tv7xAOZndu8S77cTvz3szuvgEAhwC6qCHCNYYIOV5xbKKDNlrs6+jzbXDWY+vQWqV3SJ82be2VFSghwQwxsudg1cxTIX+FlhkWZA8xYl/GABN84IKzPr9HGOOTvmf8zt4xI1Tww9U5cYnwvF17bhALBMwySD0MJmDMJccyve/Y13DO+FXcEF8V+Jg57SIa3OMGcykwc9p2Mc0coiUQU+5hmmJiFdmxxIq4qyXPTe5sO08Z9YtnFxA9t+5RizpIUfZ8a4y0wT44sSFvJWHL0HruXSeL//6lNkz2ERl6VEZIXx1/tMZFqT9wkluZpDreVqPMOma0MaOYPsH3WtFD4pdkeBeKfhQc/1O2vEN/hUvl+Cr93on0Vbw8w/2V787CtwLcWfhXwnMhxz4V8VTI5n8+bo3tVyHHAv9XKacWi61iXpyZFKtdepic6k5Gm+7Nmo6yKd6s2X/rfNSet+ks2o3mbTqLpvm8TWfRdJ+3GZa3QhZd+XYvw/xayKydmc1Hr9Sieti161Uh/1FK2ewXhKs3Mw==}

# "Flip-flop 'pc_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/pc.sv} -start_line 11 -end_line 23 -start_column 7 -end_column 4 -module {pc} -tag FLP_NO_ASRT -arg {pc_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAACdHicnZJLS8NAFIU/EVy6FukiuDHSTW1rpT7AZfFPlNr0Ea1paStuxN/uNxOtgaCgc7nDzD33nnMSBtgH7hgzoUeHSzJzavRiXtC1molOzYwR50bfzOJEwPsGHLBlyYpy7X1mWKn8qciSTeSYuScqLnjizNOD9xk5hb3H3svIVUx5t7p2bmsntHboV6zkGcr8YkfCDbfuHdqcqtPi2pnGrnei4iZqVxVPapylctAcObGIyle1rt8cVGvBw6A29e2lVMu9DfW1VrNwei7yFtFQf5TpWda/OynUeLUasODk6EcncP/vb0xoVv57NyodVhQKq+GFxNMHJaVOug==}

# "Flip-flop 'csr_op_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/e_m1_ppreg.sv} -start_line 28 -end_line 69 -start_column 7 -end_column 4 -module {e_m1_ppreg} -tag FLP_NO_ASRT -arg {csr_op_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAJgnicnVU9TwJBEH3GhNLSyoLCKDaGD/kwfoQYC2NhYWF7Ae5AIsgFjhgbf7tv7xAOZndu8S77cTvz3szuvgEAhwC6qCHCNYYIOV5xbKKDNlrs6+jzbXDWY+vQWqV3SJ82be2VFSghwQwxsudg1cxTIX+FlhkWZA8xYl/GABN84IKzPr9HGOOTvmf8zt4xI1Tww9U5cYnwvF17bhALBMwySD0MJmDMJccyve/Y13DO+FXcEF8V+Jg57SIa3OMGcykwc9p2Mc0coiUQU+5hmmJiFdmxxIq4qyXPTe5sO08Z9YtnFxA9t+5RizpIUfZ8a4y0wT44sSFvJWHL0HruXSeL//6lNkz2ERl6VEZIXx1/tMZFqT9wkluZpDreVqPMOma0MaOYPsH3WtFD4pdkeBeKfhQc/1O2vEN/hUvl+Cr93on0Vbw8w/2V787CtwLcWfhXwnMhxz4V8VTI5n8+bo3tVyHHAv9XKacWi61iXpyZFKtdepic6k5Gm+7Nmo6yKd6s2X/rfNSet+ks2o3mbTqLpvm8TWfRdJ+3GZa3QhZd+XYvw/xayKydmc1Hr9Sieti161Uh/1FK2ewXhKs3Mw==}

# "Flip-flop 'flushed_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/f1_f2_ppreg.sv} -start_line 14 -end_line 40 -start_column 7 -end_column 4 -module {f1_f2_ppreg} -tag FLP_NO_ASRT -arg {flushed_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFIHicrVM9b8IwFDxUibEjUweGCsLmpLR8SwydO7JG0ABFjRoEYWDpb+/ZbpPAiyNQiRXHeb67vHd+AXAHYIo5R4QAzxhggXco3l2uAyy5ChhT6HMo4rrmqXED7vWwwgs16kiRYAt71X5vfXnU97iTYE+1CGvOTTJjfKLD1YLva2zwRWyL73ZsqOvhm9EdealAjjNkztgjZH6hQWhOyG8e+GwSPeHso00NHyPy+4K/YkYH8j5MluVcZbhKcLes55zxRN/aVLKc+wy7ZHYRIw+FSGy8Oa1wWvKVHfcSM6c4Zi7pWufUiIVLM6FxuVtuhK7nzalc7WP5rlYcOhXL3C3GNLshWH8+y5PO/bb+5Tmd+/f6D/+KHSPP8pquc3Xs5d3nduexwp3bOuHfwAlbTXB1p1R7IP/Nul39AOXrphk=}

# "Flip-flop 'csr_result_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/e_m1_ppreg.sv} -start_line 28 -end_line 69 -start_column 7 -end_column 4 -module {e_m1_ppreg} -tag FLP_NO_ASRT -arg {csr_result_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAJgnicnVU9TwJBEH3GhNLSyoLCKDaGD/kwfoQYC2NhYWF7Ae5AIsgFjhgbf7tv7xAOZndu8S77cTvz3szuvgEAhwC6qCHCNYYIOV5xbKKDNlrs6+jzbXDWY+vQWqV3SJ82be2VFSghwQwxsudg1cxTIX+FlhkWZA8xYl/GABN84IKzPr9HGOOTvmf8zt4xI1Tww9U5cYnwvF17bhALBMwySD0MJmDMJccyve/Y13DO+FXcEF8V+Jg57SIa3OMGcykwc9p2Mc0coiUQU+5hmmJiFdmxxIq4qyXPTe5sO08Z9YtnFxA9t+5RizpIUfZ8a4y0wT44sSFvJWHL0HruXSeL//6lNkz2ERl6VEZIXx1/tMZFqT9wkluZpDreVqPMOma0MaOYPsH3WtFD4pdkeBeKfhQc/1O2vEN/hUvl+Cr93on0Vbw8w/2V787CtwLcWfhXwnMhxz4V8VTI5n8+bo3tVyHHAv9XKacWi61iXpyZFKtdepic6k5Gm+7Nmo6yKd6s2X/rfNSet+ks2o3mbTqLpvm8TWfRdJ+3GZa3QhZd+XYvw/xayKydmc1Hr9Sieti161Uh/1FK2ewXhKs3Mw==}

# "Flip-flop 'is_a_inst_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/f1_f2_ppreg.sv} -start_line 14 -end_line 40 -start_column 7 -end_column 4 -module {f1_f2_ppreg} -tag FLP_NO_ASRT -arg {is_a_inst_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFIHicrVM9b8IwFDxUibEjUweGCsLmpLR8SwydO7JG0ABFjRoEYWDpb+/ZbpPAiyNQiRXHeb67vHd+AXAHYIo5R4QAzxhggXco3l2uAyy5ChhT6HMo4rrmqXED7vWwwgs16kiRYAt71X5vfXnU97iTYE+1CGvOTTJjfKLD1YLva2zwRWyL73ZsqOvhm9EdealAjjNkztgjZH6hQWhOyG8e+GwSPeHso00NHyPy+4K/YkYH8j5MluVcZbhKcLes55zxRN/aVLKc+wy7ZHYRIw+FSGy8Oa1wWvKVHfcSM6c4Zi7pWufUiIVLM6FxuVtuhK7nzalc7WP5rlYcOhXL3C3GNLshWH8+y5PO/bb+5Tmd+/f6D/+KHSPP8pquc3Xs5d3nduexwp3bOuHfwAlbTXB1p1R7IP/Nul39AOXrphk=}

# "Flip-flop 'is_a_inst_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/e_m1_ppreg.sv} -start_line 28 -end_line 69 -start_column 7 -end_column 4 -module {e_m1_ppreg} -tag FLP_NO_ASRT -arg {is_a_inst_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAJgnicnVU9TwJBEH3GhNLSyoLCKDaGD/kwfoQYC2NhYWF7Ae5AIsgFjhgbf7tv7xAOZndu8S77cTvz3szuvgEAhwC6qCHCNYYIOV5xbKKDNlrs6+jzbXDWY+vQWqV3SJ82be2VFSghwQwxsudg1cxTIX+FlhkWZA8xYl/GABN84IKzPr9HGOOTvmf8zt4xI1Tww9U5cYnwvF17bhALBMwySD0MJmDMJccyve/Y13DO+FXcEF8V+Jg57SIa3OMGcykwc9p2Mc0coiUQU+5hmmJiFdmxxIq4qyXPTe5sO08Z9YtnFxA9t+5RizpIUfZ8a4y0wT44sSFvJWHL0HruXSeL//6lNkz2ERl6VEZIXx1/tMZFqT9wkluZpDreVqPMOma0MaOYPsH3WtFD4pdkeBeKfhQc/1O2vEN/hUvl+Cr93on0Vbw8w/2V787CtwLcWfhXwnMhxz4V8VTI5n8+bo3tVyHHAv9XKacWi61iXpyZFKtdepic6k5Gm+7Nmo6yKd6s2X/rfNSet+ks2o3mbTqLpvm8TWfRdJ+3GZa3QhZd+XYvw/xayKydmc1Hr9Sieti161Uh/1FK2ewXhKs3Mw==}

# "Flip-flop 'pc_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/f1_f2_ppreg.sv} -start_line 14 -end_line 40 -start_column 7 -end_column 4 -module {f1_f2_ppreg} -tag FLP_NO_ASRT -arg {pc_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFIHicrVM9b8IwFDxUibEjUweGCsLmpLR8SwydO7JG0ABFjRoEYWDpb+/ZbpPAiyNQiRXHeb67vHd+AXAHYIo5R4QAzxhggXco3l2uAyy5ChhT6HMo4rrmqXED7vWwwgs16kiRYAt71X5vfXnU97iTYE+1CGvOTTJjfKLD1YLva2zwRWyL73ZsqOvhm9EdealAjjNkztgjZH6hQWhOyG8e+GwSPeHso00NHyPy+4K/YkYH8j5MluVcZbhKcLes55zxRN/aVLKc+wy7ZHYRIw+FSGy8Oa1wWvKVHfcSM6c4Zi7pWufUiIVLM6FxuVtuhK7nzalc7WP5rlYcOhXL3C3GNLshWH8+y5PO/bb+5Tmd+/f6D/+KHSPP8pquc3Xs5d3nduexwp3bOuHfwAlbTXB1p1R7IP/Nul39AOXrphk=}

# "Flip-flop 'mem_op_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/e_m1_ppreg.sv} -start_line 28 -end_line 69 -start_column 7 -end_column 4 -module {e_m1_ppreg} -tag FLP_NO_ASRT -arg {mem_op_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAJgnicnVU9TwJBEH3GhNLSyoLCKDaGD/kwfoQYC2NhYWF7Ae5AIsgFjhgbf7tv7xAOZndu8S77cTvz3szuvgEAhwC6qCHCNYYIOV5xbKKDNlrs6+jzbXDWY+vQWqV3SJ82be2VFSghwQwxsudg1cxTIX+FlhkWZA8xYl/GABN84IKzPr9HGOOTvmf8zt4xI1Tww9U5cYnwvF17bhALBMwySD0MJmDMJccyve/Y13DO+FXcEF8V+Jg57SIa3OMGcykwc9p2Mc0coiUQU+5hmmJiFdmxxIq4qyXPTe5sO08Z9YtnFxA9t+5RizpIUfZ8a4y0wT44sSFvJWHL0HruXSeL//6lNkz2ERl6VEZIXx1/tMZFqT9wkluZpDreVqPMOma0MaOYPsH3WtFD4pdkeBeKfhQc/1O2vEN/hUvl+Cr93on0Vbw8w/2V787CtwLcWfhXwnMhxz4V8VTI5n8+bo3tVyHHAv9XKacWi61iXpyZFKtdepic6k5Gm+7Nmo6yKd6s2X/rfNSet+ks2o3mbTqLpvm8TWfRdJ+3GZa3QhZd+XYvw/xayKydmc1Hr9Sieti161Uh/1FK2ewXhKs3Mw==}

# "Flip-flop 'inst_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/f2_d_ppreg.sv} -start_line 17 -end_line 43 -start_column 7 -end_column 4 -module {f2_d_ppreg} -tag FLP_NO_ASRT -arg {inst_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFDnicrVM9T8MwEH0IqSMjE0OHioYtSSsa8SFViLkwdU0/kpaKiFRtOrDw23m2aXB1dlQ+bMX2nd+78z1dAJwCGCJBhJwzwQx9DDBFj/uCa05PjDn3mDOilXEPeZrjmphYI4AWKpRYw4yTr0+NgPED3pTYEpthybVNdoFXXPE0o73ECm/EXtI2c8XsAT7o3ZBXCeRdjfxmbJHy5alGKE7KnDvubaLvuUboMkaIW/L7Dr6b1WONXb7b8ELBW7OWZs5Zjc2ZI6PnwvIUWpfD6oaOLBvelXqt8F4rpF48ZYxCKDQWMY5Xyo9Q9Tw0RPbFk1FuvFFcito+xT4XrL22ieNmr7HRbEF7R8+L0OzxD5rZ3eWvzceeYIQnPGu2rOD4XvPr0mnQxdZg9K998zs1bHb84z5p1kH+jS1z+gR9LaR9}

# "Flip-flop 'latched_DO' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 122 -end_line 163 -start_column 17 -end_column 6 -module {SRAM} -tag FLP_NO_ASRT -arg {latched_DO} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAIKnicvZHNT8JAEMV/xsSDBw7EePDUo+iFtiZ+Jyp6MMZ48KCJIQRolRoUI1y4+LfzWBUttEtKNnSzk+28nTez7wGrwBlVYg4UA5pmx1r7RLQI8RUPaQsPFPcM3jRIW7HFs+pgjQE9Pvj+Vn72+NsS/7aQHn2xRrwoetS4oSK0pLMnllj5hHdlNk1mvBJxe6qtcW/ulifI//teav3WfPHAFRearZLinK5+nKr3uBX6pmk/GdLQ3aFeFovniXPqwk84VbzkWpkqO+qR6EafXY4m5zrH4n6d4e5KuYF06xglGmK5s7IU6VZOdYr1ukjZjals17hgU6TjbGq7kvkz2x31HTnqZzrqO3E0n6VIt2U7On9qu5KLOho4cjTIdDRw4mg+S5Fuy3Z0/tR2JRd1NHTkaJjpaOjE0XyWIt2W7ej8qe1K5s9cmsms//2NAMaNEBs=}

# "Flip-flop 'operand2_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/e_m1_ppreg.sv} -start_line 28 -end_line 69 -start_column 7 -end_column 4 -module {e_m1_ppreg} -tag FLP_NO_ASRT -arg {operand2_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAJgnicnVU9TwJBEH3GhNLSyoLCKDaGD/kwfoQYC2NhYWF7Ae5AIsgFjhgbf7tv7xAOZndu8S77cTvz3szuvgEAhwC6qCHCNYYIOV5xbKKDNlrs6+jzbXDWY+vQWqV3SJ82be2VFSghwQwxsudg1cxTIX+FlhkWZA8xYl/GABN84IKzPr9HGOOTvmf8zt4xI1Tww9U5cYnwvF17bhALBMwySD0MJmDMJccyve/Y13DO+FXcEF8V+Jg57SIa3OMGcykwc9p2Mc0coiUQU+5hmmJiFdmxxIq4qyXPTe5sO08Z9YtnFxA9t+5RizpIUfZ8a4y0wT44sSFvJWHL0HruXSeL//6lNkz2ERl6VEZIXx1/tMZFqT9wkluZpDreVqPMOma0MaOYPsH3WtFD4pdkeBeKfhQc/1O2vEN/hUvl+Cr93on0Vbw8w/2V787CtwLcWfhXwnMhxz4V8VTI5n8+bo3tVyHHAv9XKacWi61iXpyZFKtdepic6k5Gm+7Nmo6yKd6s2X/rfNSet+ks2o3mbTqLpvm8TWfRdJ+3GZa3QhZd+XYvw/xayKydmc1Hr9Sieti161Uh/1FK2ewXhKs3Mw==}

# "Flip-flop 'is_a_inst_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/f2_d_ppreg.sv} -start_line 17 -end_line 43 -start_column 7 -end_column 4 -module {f2_d_ppreg} -tag FLP_NO_ASRT -arg {is_a_inst_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFDnicrVM9T8MwEH0IqSMjE0OHioYtSSsa8SFViLkwdU0/kpaKiFRtOrDw23m2aXB1dlQ+bMX2nd+78z1dAJwCGCJBhJwzwQx9DDBFj/uCa05PjDn3mDOilXEPeZrjmphYI4AWKpRYw4yTr0+NgPED3pTYEpthybVNdoFXXPE0o73ECm/EXtI2c8XsAT7o3ZBXCeRdjfxmbJHy5alGKE7KnDvubaLvuUboMkaIW/L7Dr6b1WONXb7b8ELBW7OWZs5Zjc2ZI6PnwvIUWpfD6oaOLBvelXqt8F4rpF48ZYxCKDQWMY5Xyo9Q9Tw0RPbFk1FuvFFcito+xT4XrL22ieNmr7HRbEF7R8+L0OzxD5rZ3eWvzceeYIQnPGu2rOD4XvPr0mnQxdZg9K998zs1bHb84z5p1kH+jS1z+gR9LaR9}

# "Flip-flop 'pc_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/e_m1_ppreg.sv} -start_line 28 -end_line 69 -start_column 7 -end_column 4 -module {e_m1_ppreg} -tag FLP_NO_ASRT -arg {pc_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAJgnicnVU9TwJBEH3GhNLSyoLCKDaGD/kwfoQYC2NhYWF7Ae5AIsgFjhgbf7tv7xAOZndu8S77cTvz3szuvgEAhwC6qCHCNYYIOV5xbKKDNlrs6+jzbXDWY+vQWqV3SJ82be2VFSghwQwxsudg1cxTIX+FlhkWZA8xYl/GABN84IKzPr9HGOOTvmf8zt4xI1Tww9U5cYnwvF17bhALBMwySD0MJmDMJccyve/Y13DO+FXcEF8V+Jg57SIa3OMGcykwc9p2Mc0coiUQU+5hmmJiFdmxxIq4qyXPTe5sO08Z9YtnFxA9t+5RizpIUfZ8a4y0wT44sSFvJWHL0HruXSeL//6lNkz2ERl6VEZIXx1/tMZFqT9wkluZpDreVqPMOma0MaOYPsH3WtFD4pdkeBeKfhQc/1O2vEN/hUvl+Cr93on0Vbw8w/2V787CtwLcWfhXwnMhxz4V8VTI5n8+bo3tVyHHAv9XKacWi61iXpyZFKtdepic6k5Gm+7Nmo6yKd6s2X/rfNSet+ks2o3mbTqLpvm8TWfRdJ+3GZa3QhZd+XYvw/xayKydmc1Hr9Sieti161Uh/1FK2ewXhKs3Mw==}

# "Flip-flop 'pc_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/f2_d_ppreg.sv} -start_line 17 -end_line 43 -start_column 7 -end_column 4 -module {f2_d_ppreg} -tag FLP_NO_ASRT -arg {pc_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFDnicrVM9T8MwEH0IqSMjE0OHioYtSSsa8SFViLkwdU0/kpaKiFRtOrDw23m2aXB1dlQ+bMX2nd+78z1dAJwCGCJBhJwzwQx9DDBFj/uCa05PjDn3mDOilXEPeZrjmphYI4AWKpRYw4yTr0+NgPED3pTYEpthybVNdoFXXPE0o73ECm/EXtI2c8XsAT7o3ZBXCeRdjfxmbJHy5alGKE7KnDvubaLvuUboMkaIW/L7Dr6b1WONXb7b8ELBW7OWZs5Zjc2ZI6PnwvIUWpfD6oaOLBvelXqt8F4rpF48ZYxCKDQWMY5Xyo9Q9Tw0RPbFk1FuvFFcito+xT4XrL22ieNmr7HRbEF7R8+L0OzxD5rZ3eWvzceeYIQnPGu2rOD4XvPr0mnQxdZg9K998zs1bHb84z5p1kH+jS1z+gR9LaR9}

# "Flip-flop 'rd_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/e_m1_ppreg.sv} -start_line 28 -end_line 69 -start_column 7 -end_column 4 -module {e_m1_ppreg} -tag FLP_NO_ASRT -arg {rd_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAJgnicnVU9TwJBEH3GhNLSyoLCKDaGD/kwfoQYC2NhYWF7Ae5AIsgFjhgbf7tv7xAOZndu8S77cTvz3szuvgEAhwC6qCHCNYYIOV5xbKKDNlrs6+jzbXDWY+vQWqV3SJ82be2VFSghwQwxsudg1cxTIX+FlhkWZA8xYl/GABN84IKzPr9HGOOTvmf8zt4xI1Tww9U5cYnwvF17bhALBMwySD0MJmDMJccyve/Y13DO+FXcEF8V+Jg57SIa3OMGcykwc9p2Mc0coiUQU+5hmmJiFdmxxIq4qyXPTe5sO08Z9YtnFxA9t+5RizpIUfZ8a4y0wT44sSFvJWHL0HruXSeL//6lNkz2ERl6VEZIXx1/tMZFqT9wkluZpDreVqPMOma0MaOYPsH3WtFD4pdkeBeKfhQc/1O2vEN/hUvl+Cr93on0Vbw8w/2V787CtwLcWfhXwnMhxz4V8VTI5n8+bo3tVyHHAv9XKacWi61iXpyZFKtdepic6k5Gm+7Nmo6yKd6s2X/rfNSet+ks2o3mbTqLpvm8TWfRdJ+3GZa3QhZd+XYvw/xayKydmc1Hr9Sieti161Uh/1FK2ewXhKs3Mw==}

# "Flip-flop 'register_bank' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/regfile.sv} -start_line 18 -end_line 30 -start_column 7 -end_column 4 -module {regfile} -tag FLP_NO_ASRT -arg {register_bank} -comment {This design is using synchronous reset(active low)} -persistency_data {AAACZnicnZBNS8NAFEWPCF26dOWiK626Sa3ViBb8Aa7EXRFJmrQUSysxkJ2/3ZNJKrVZ6VzeMPd93Jk7wCHwyFhk5FwRc80tM+6ISN2HsthqLhsbMTehMyWxFplLBPQo2fBBsw7aqNdA/YGVDZ/OZSzc+96w4p1zT6l8wZK1vafyBkvmTn2ZLZwrO53PP51bzL2hcKaul0Ghz8QYct+yB2Okx4Zfin3Vp47qFkXbVb8ll72FH1jrYWr2NahPWv0zXUbeAscdndyZzMpRJ3Oyk1mFv/r9touOVvNHVVDYd/LyLyeVp0wUO44qeWJv8mdHveb0DYKuTRo=}

# "Flip-flop 'result_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/e_m1_ppreg.sv} -start_line 28 -end_line 69 -start_column 7 -end_column 4 -module {e_m1_ppreg} -tag FLP_NO_ASRT -arg {result_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAJgnicnVU9TwJBEH3GhNLSyoLCKDaGD/kwfoQYC2NhYWF7Ae5AIsgFjhgbf7tv7xAOZndu8S77cTvz3szuvgEAhwC6qCHCNYYIOV5xbKKDNlrs6+jzbXDWY+vQWqV3SJ82be2VFSghwQwxsudg1cxTIX+FlhkWZA8xYl/GABN84IKzPr9HGOOTvmf8zt4xI1Tww9U5cYnwvF17bhALBMwySD0MJmDMJccyve/Y13DO+FXcEF8V+Jg57SIa3OMGcykwc9p2Mc0coiUQU+5hmmJiFdmxxIq4qyXPTe5sO08Z9YtnFxA9t+5RizpIUfZ8a4y0wT44sSFvJWHL0HruXSeL//6lNkz2ERl6VEZIXx1/tMZFqT9wkluZpDreVqPMOma0MaOYPsH3WtFD4pdkeBeKfhQc/1O2vEN/hUvl+Cr93on0Vbw8w/2V787CtwLcWfhXwnMhxz4V8VTI5n8+bo3tVyHHAv9XKacWi61iXpyZFKtdepic6k5Gm+7Nmo6yKd6s2X/rfNSet+ks2o3mbTqLpvm8TWfRdJ+3GZa3QhZd+XYvw/xayKydmc1Hr9Sieti161Uh/1FK2ewXhKs3Mw==}

# "Flip-flop 'rst_reg' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/top.sv} -start_line 9 -end_line 11 -start_column 7 -end_column 4 -module {top} -tag FLP_NO_ASRT -arg {rst_reg} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAAwnicPY3bCoJQEEVXBH2HT2FveoouVNCfRKZJJBnl/9M6x2iGvWf2XIEpcGJJyZZKDhTUxoKN2InAxUpUq+SVCNzU68SlGmYM9LwYbfJDtNz7uZ2eD42XWjnjSseDhVmlbrnzdHauHv3t9MDZGLsZB47/6j79a9yovxWsF5M=}

# "Flip-flop 'wb_src_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/e_m1_ppreg.sv} -start_line 28 -end_line 69 -start_column 7 -end_column 4 -module {e_m1_ppreg} -tag FLP_NO_ASRT -arg {wb_src_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAJgnicnVU9TwJBEH3GhNLSyoLCKDaGD/kwfoQYC2NhYWF7Ae5AIsgFjhgbf7tv7xAOZndu8S77cTvz3szuvgEAhwC6qCHCNYYIOV5xbKKDNlrs6+jzbXDWY+vQWqV3SJ82be2VFSghwQwxsudg1cxTIX+FlhkWZA8xYl/GABN84IKzPr9HGOOTvmf8zt4xI1Tww9U5cYnwvF17bhALBMwySD0MJmDMJccyve/Y13DO+FXcEF8V+Jg57SIa3OMGcykwc9p2Mc0coiUQU+5hmmJiFdmxxIq4qyXPTe5sO08Z9YtnFxA9t+5RizpIUfZ8a4y0wT44sSFvJWHL0HruXSeL//6lNkz2ERl6VEZIXx1/tMZFqT9wkluZpDreVqPMOma0MaOYPsH3WtFD4pdkeBeKfhQc/1O2vEN/hUvl+Cr93on0Vbw8w/2V787CtwLcWfhXwnMhxz4V8VTI5n8+bo3tVyHHAv9XKacWi61iXpyZFKtdepic6k5Gm+7Nmo6yKd6s2X/rfNSet+ks2o3mbTqLpvm8TWfRdJ+3GZa3QhZd+XYvw/xayKydmc1Hr9Sieti161Uh/1FK2ewXhKs3Mw==}

# "Flip-flop 'csr_dataout_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m1_m2_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m1_m2_ppreg} -tag FLP_NO_ASRT -arg {csr_dataout_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFYnicnZTNToNAFIWPMXFp+gAuurLYhYHWUvxLGhcuuvAVSO1g00gtAYw7n91zh6aMznRSgQzD3Hu+ewc4AcApgBkmyDBFglcOhQhvXGcIcYuYsYx5hTHnBEtGQmoXXMdau8ANa5yhxhYFmuNkN+QIWD9gZouKFRRWvPZZJ8c7rngn9VdY44PaS66bc809BPhmtCRXW8qHvbIlKqTcTaoVwqTs+cm5T/UjrxEG7B/innxi8SWrV9TnDnKMkcFeO1hlMRODiC3ii0+Tsl/JN2F3a8nQIgsnMfJ22/DZNpoqvPu038pS79FNRuzUsk8HWcWvUnM0tH/vs4NVjv8+vT2b0QmKM3BhxHLtxN9+eu7gJ1sh3e/+5SwzJ/TwKG9JzN3L5ysz5+7l8laxU9u9fK4yc27a5ywzJ/RLR2+5VVJx3slnLo1UO//jOPkf6rsf6KW6CQ==}

# "Flip-flop 'csr_op_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m1_m2_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m1_m2_ppreg} -tag FLP_NO_ASRT -arg {csr_op_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFYnicnZTNToNAFIWPMXFp+gAuurLYhYHWUvxLGhcuuvAVSO1g00gtAYw7n91zh6aMznRSgQzD3Hu+ewc4AcApgBkmyDBFglcOhQhvXGcIcYuYsYx5hTHnBEtGQmoXXMdau8ANa5yhxhYFmuNkN+QIWD9gZouKFRRWvPZZJ8c7rngn9VdY44PaS66bc809BPhmtCRXW8qHvbIlKqTcTaoVwqTs+cm5T/UjrxEG7B/innxi8SWrV9TnDnKMkcFeO1hlMRODiC3ii0+Tsl/JN2F3a8nQIgsnMfJ22/DZNpoqvPu038pS79FNRuzUsk8HWcWvUnM0tH/vs4NVjv8+vT2b0QmKM3BhxHLtxN9+eu7gJ1sh3e/+5SwzJ/TwKG9JzN3L5ysz5+7l8laxU9u9fK4yc27a5ywzJ/RLR2+5VVJx3slnLo1UO//jOPkf6rsf6KW6CQ==}

# "Flip-flop 'csr_result_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m1_m2_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m1_m2_ppreg} -tag FLP_NO_ASRT -arg {csr_result_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFYnicnZTNToNAFIWPMXFp+gAuurLYhYHWUvxLGhcuuvAVSO1g00gtAYw7n91zh6aMznRSgQzD3Hu+ewc4AcApgBkmyDBFglcOhQhvXGcIcYuYsYx5hTHnBEtGQmoXXMdau8ANa5yhxhYFmuNkN+QIWD9gZouKFRRWvPZZJ8c7rngn9VdY44PaS66bc809BPhmtCRXW8qHvbIlKqTcTaoVwqTs+cm5T/UjrxEG7B/innxi8SWrV9TnDnKMkcFeO1hlMRODiC3ii0+Tsl/JN2F3a8nQIgsnMfJ22/DZNpoqvPu038pS79FNRuzUsk8HWcWvUnM0tH/vs4NVjv8+vT2b0QmKM3BhxHLtxN9+eu7gJ1sh3e/+5SwzJ/TwKG9JzN3L5ysz5+7l8laxU9u9fK4yc27a5ywzJ/RLR2+5VVJx3slnLo1UO//jOPkf6rsf6KW6CQ==}

# "Flip-flop 'is_a_inst_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m1_m2_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m1_m2_ppreg} -tag FLP_NO_ASRT -arg {is_a_inst_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFYnicnZTNToNAFIWPMXFp+gAuurLYhYHWUvxLGhcuuvAVSO1g00gtAYw7n91zh6aMznRSgQzD3Hu+ewc4AcApgBkmyDBFglcOhQhvXGcIcYuYsYx5hTHnBEtGQmoXXMdau8ANa5yhxhYFmuNkN+QIWD9gZouKFRRWvPZZJ8c7rngn9VdY44PaS66bc809BPhmtCRXW8qHvbIlKqTcTaoVwqTs+cm5T/UjrxEG7B/innxi8SWrV9TnDnKMkcFeO1hlMRODiC3ii0+Tsl/JN2F3a8nQIgsnMfJ22/DZNpoqvPu038pS79FNRuzUsk8HWcWvUnM0tH/vs4NVjv8+vT2b0QmKM3BhxHLtxN9+eu7gJ1sh3e/+5SwzJ/TwKG9JzN3L5ysz5+7l8laxU9u9fK4yc27a5ywzJ/RLR2+5VVJx3slnLo1UO//jOPkf6rsf6KW6CQ==}

# "Flip-flop 'mem_op_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m1_m2_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m1_m2_ppreg} -tag FLP_NO_ASRT -arg {mem_op_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFYnicnZTNToNAFIWPMXFp+gAuurLYhYHWUvxLGhcuuvAVSO1g00gtAYw7n91zh6aMznRSgQzD3Hu+ewc4AcApgBkmyDBFglcOhQhvXGcIcYuYsYx5hTHnBEtGQmoXXMdau8ANa5yhxhYFmuNkN+QIWD9gZouKFRRWvPZZJ8c7rngn9VdY44PaS66bc809BPhmtCRXW8qHvbIlKqTcTaoVwqTs+cm5T/UjrxEG7B/innxi8SWrV9TnDnKMkcFeO1hlMRODiC3ii0+Tsl/JN2F3a8nQIgsnMfJ22/DZNpoqvPu038pS79FNRuzUsk8HWcWvUnM0tH/vs4NVjv8+vT2b0QmKM3BhxHLtxN9+eu7gJ1sh3e/+5SwzJ/TwKG9JzN3L5ysz5+7l8laxU9u9fK4yc27a5ywzJ/RLR2+5VVJx3slnLo1UO//jOPkf6rsf6KW6CQ==}

# "Flip-flop 'pc_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m1_m2_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m1_m2_ppreg} -tag FLP_NO_ASRT -arg {pc_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFYnicnZTNToNAFIWPMXFp+gAuurLYhYHWUvxLGhcuuvAVSO1g00gtAYw7n91zh6aMznRSgQzD3Hu+ewc4AcApgBkmyDBFglcOhQhvXGcIcYuYsYx5hTHnBEtGQmoXXMdau8ANa5yhxhYFmuNkN+QIWD9gZouKFRRWvPZZJ8c7rngn9VdY44PaS66bc809BPhmtCRXW8qHvbIlKqTcTaoVwqTs+cm5T/UjrxEG7B/innxi8SWrV9TnDnKMkcFeO1hlMRODiC3ii0+Tsl/JN2F3a8nQIgsnMfJ22/DZNpoqvPu038pS79FNRuzUsk8HWcWvUnM0tH/vs4NVjv8+vT2b0QmKM3BhxHLtxN9+eu7gJ1sh3e/+5SwzJ/TwKG9JzN3L5ysz5+7l8laxU9u9fK4yc27a5ywzJ/RLR2+5VVJx3slnLo1UO//jOPkf6rsf6KW6CQ==}

# "Flip-flop 'rd_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m1_m2_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m1_m2_ppreg} -tag FLP_NO_ASRT -arg {rd_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFYnicnZTNToNAFIWPMXFp+gAuurLYhYHWUvxLGhcuuvAVSO1g00gtAYw7n91zh6aMznRSgQzD3Hu+ewc4AcApgBkmyDBFglcOhQhvXGcIcYuYsYx5hTHnBEtGQmoXXMdau8ANa5yhxhYFmuNkN+QIWD9gZouKFRRWvPZZJ8c7rngn9VdY44PaS66bc809BPhmtCRXW8qHvbIlKqTcTaoVwqTs+cm5T/UjrxEG7B/innxi8SWrV9TnDnKMkcFeO1hlMRODiC3ii0+Tsl/JN2F3a8nQIgsnMfJ22/DZNpoqvPu038pS79FNRuzUsk8HWcWvUnM0tH/vs4NVjv8+vT2b0QmKM3BhxHLtxN9+eu7gJ1sh3e/+5SwzJ/TwKG9JzN3L5ysz5+7l8laxU9u9fK4yc27a5ywzJ/RLR2+5VVJx3slnLo1UO//jOPkf6rsf6KW6CQ==}

# "Flip-flop 'result_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m1_m2_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m1_m2_ppreg} -tag FLP_NO_ASRT -arg {result_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFYnicnZTNToNAFIWPMXFp+gAuurLYhYHWUvxLGhcuuvAVSO1g00gtAYw7n91zh6aMznRSgQzD3Hu+ewc4AcApgBkmyDBFglcOhQhvXGcIcYuYsYx5hTHnBEtGQmoXXMdau8ANa5yhxhYFmuNkN+QIWD9gZouKFRRWvPZZJ8c7rngn9VdY44PaS66bc809BPhmtCRXW8qHvbIlKqTcTaoVwqTs+cm5T/UjrxEG7B/innxi8SWrV9TnDnKMkcFeO1hlMRODiC3ii0+Tsl/JN2F3a8nQIgsnMfJ22/DZNpoqvPu038pS79FNRuzUsk8HWcWvUnM0tH/vs4NVjv8+vT2b0QmKM3BhxHLtxN9+eu7gJ1sh3e/+5SwzJ/TwKG9JzN3L5ysz5+7l8laxU9u9fK4yc27a5ywzJ/RLR2+5VVJx3slnLo1UO//jOPkf6rsf6KW6CQ==}

# "Flip-flop 'wb_src_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m1_m2_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m1_m2_ppreg} -tag FLP_NO_ASRT -arg {wb_src_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFYnicnZTNToNAFIWPMXFp+gAuurLYhYHWUvxLGhcuuvAVSO1g00gtAYw7n91zh6aMznRSgQzD3Hu+ewc4AcApgBkmyDBFglcOhQhvXGcIcYuYsYx5hTHnBEtGQmoXXMdau8ANa5yhxhYFmuNkN+QIWD9gZouKFRRWvPZZJ8c7rngn9VdY44PaS66bc809BPhmtCRXW8qHvbIlKqTcTaoVwqTs+cm5T/UjrxEG7B/innxi8SWrV9TnDnKMkcFeO1hlMRODiC3ii0+Tsl/JN2F3a8nQIgsnMfJ22/DZNpoqvPu038pS79FNRuzUsk8HWcWvUnM0tH/vs4NVjv8+vT2b0QmKM3BhxHLtxN9+eu7gJ1sh3e/+5SwzJ/TwKG9JzN3L5ysz5+7l8laxU9u9fK4yc27a5ywzJ/RLR2+5VVJx3slnLo1UO//jOPkf6rsf6KW6CQ==}

# "Flip-flop 'csr_dataout_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m2_wb_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m2_wb_ppreg} -tag FLP_NO_ASRT -arg {csr_dataout_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFhnicnZLNTsJAFIWPMWHpE7hgpejCtCoF/EmIMS5YuPAFGmGQEIs0bY07n91zp4SO3mmFdjJtZ+Z859LLAXAIYIwhAlxjgBCG49WOAWdox4hDVjOOEfrUXnIVYU5myqehRwcF1khRXgebKVeP/j2erJGTMFjw3qVTgnec8W3K9QJLfFB7wnU5lngj9c3djFyhlHdbZUXkiPm7YqsQJmbNTz67VN/zHuKU9QPckn9UvMGK/itS0oGCs6T/ulzx6yufofLJ6JKTSP5lLzysUUzfISJFfLErMetl7KiuVpGBIlMv0fxtM1sptv+07m7ksA+17D7dHde67N7loy07Zy4kq8fOTmJT+TtbTy2ypRVS+6V1yup04nqzV+bcM6HPd0qd7PlrNSXOPfPX8qUu3ah1raa8uWdCP7dMnF8ljpNW6fNp/DnslG8/rAbBXQ==}

# "Flip-flop 'csr_op_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m2_wb_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m2_wb_ppreg} -tag FLP_NO_ASRT -arg {csr_op_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFhnicnZLNTsJAFIWPMWHpE7hgpejCtCoF/EmIMS5YuPAFGmGQEIs0bY07n91zp4SO3mmFdjJtZ+Z859LLAXAIYIwhAlxjgBCG49WOAWdox4hDVjOOEfrUXnIVYU5myqehRwcF1khRXgebKVeP/j2erJGTMFjw3qVTgnec8W3K9QJLfFB7wnU5lngj9c3djFyhlHdbZUXkiPm7YqsQJmbNTz67VN/zHuKU9QPckn9UvMGK/itS0oGCs6T/ulzx6yufofLJ6JKTSP5lLzysUUzfISJFfLErMetl7KiuVpGBIlMv0fxtM1sptv+07m7ksA+17D7dHde67N7loy07Zy4kq8fOTmJT+TtbTy2ypRVS+6V1yup04nqzV+bcM6HPd0qd7PlrNSXOPfPX8qUu3ah1raa8uWdCP7dMnF8ljpNW6fNp/DnslG8/rAbBXQ==}

# "Flip-flop 'csr_result_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m2_wb_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m2_wb_ppreg} -tag FLP_NO_ASRT -arg {csr_result_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFhnicnZLNTsJAFIWPMWHpE7hgpejCtCoF/EmIMS5YuPAFGmGQEIs0bY07n91zp4SO3mmFdjJtZ+Z859LLAXAIYIwhAlxjgBCG49WOAWdox4hDVjOOEfrUXnIVYU5myqehRwcF1khRXgebKVeP/j2erJGTMFjw3qVTgnec8W3K9QJLfFB7wnU5lngj9c3djFyhlHdbZUXkiPm7YqsQJmbNTz67VN/zHuKU9QPckn9UvMGK/itS0oGCs6T/ulzx6yufofLJ6JKTSP5lLzysUUzfISJFfLErMetl7KiuVpGBIlMv0fxtM1sptv+07m7ksA+17D7dHde67N7loy07Zy4kq8fOTmJT+TtbTy2ypRVS+6V1yup04nqzV+bcM6HPd0qd7PlrNSXOPfPX8qUu3ah1raa8uWdCP7dMnF8ljpNW6fNp/DnslG8/rAbBXQ==}

# "Flip-flop 'alu_op_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/d_e_ppreg.sv} -start_line 29 -end_line 83 -start_column 7 -end_column 4 -module {d_e_ppreg} -tag FLP_NO_ASRT -arg {alu_op_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAMjHicpVZNT8JAEH3GhKNHTx44GMWL4aMgfoYYTx48ePDaAAUkgpACMV787b4tSgu7M91qm263O/vezs7ORwHsA+ggQhd1NPlEbFsIcIk+emigzXeV341Ebu4AQ1xQPmCvxr5BAiUsMcMc62vv5zFXhfwVSmZYEBNhxLZM1gnecMZej98jjPHOuSf8Xt9jMlfwxdGYuKU182YzM0UsEFKbMJlhMCHXXPFd5uxbtjWccv0qrok/t/AxZbuIZgZRtRBz7mIXYeyUYmwtjY0GXKtLHSNq9D98PQffsvBToqcJaq7u1kZ2eWIrARmoyA+eXMgTiZ32SpFtC9lPUO41a1wpxQaO8zTekmehg838QWJR4CgzMkl8dtvzOg4/iCmbJe0SnxvvNT5orDaxvPfF4vD3YnmG2c+VyOzy7+yYjnb5enbMoJ9FdJ7XS/IirPZJS3LD+iiyahHikulsWtS4ZDqbFkkumc6mRZdLZtjuFf9yx9vuuGE5tNC/0WfngDQK11E1TKy2wKsVVQ+ibsVqg53BtBhqqhlMi5/tTCRrX6xm+PLkZcY7kce3hsgMvrVEZvCtKR2Rwb+22FU4z+e3LSl7+7FD4qo5T6IGf6kXRqe6sid3ndBRUn3QM1DRulCELb8e6PnMtw7oLL75X2fxzfs6i2++z/uP0PO87vH2/1Zp3fsGM1mauA==}

# "Flip-flop 'dmem_dataout_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m2_wb_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m2_wb_ppreg} -tag FLP_NO_ASRT -arg {dmem_dataout_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFhnicnZLNTsJAFIWPMWHpE7hgpejCtCoF/EmIMS5YuPAFGmGQEIs0bY07n91zp4SO3mmFdjJtZ+Z859LLAXAIYIwhAlxjgBCG49WOAWdox4hDVjOOEfrUXnIVYU5myqehRwcF1khRXgebKVeP/j2erJGTMFjw3qVTgnec8W3K9QJLfFB7wnU5lngj9c3djFyhlHdbZUXkiPm7YqsQJmbNTz67VN/zHuKU9QPckn9UvMGK/itS0oGCs6T/ulzx6yufofLJ6JKTSP5lLzysUUzfISJFfLErMetl7KiuVpGBIlMv0fxtM1sptv+07m7ksA+17D7dHde67N7loy07Zy4kq8fOTmJT+TtbTy2ypRVS+6V1yup04nqzV+bcM6HPd0qd7PlrNSXOPfPX8qUu3ah1raa8uWdCP7dMnF8ljpNW6fNp/DnslG8/rAbBXQ==}

# "Flip-flop 'csr_op_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/d_e_ppreg.sv} -start_line 29 -end_line 83 -start_column 7 -end_column 4 -module {d_e_ppreg} -tag FLP_NO_ASRT -arg {csr_op_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAMjHicpVZNT8JAEH3GhKNHTx44GMWL4aMgfoYYTx48ePDaAAUkgpACMV787b4tSgu7M91qm263O/vezs7ORwHsA+ggQhd1NPlEbFsIcIk+emigzXeV341Ebu4AQ1xQPmCvxr5BAiUsMcMc62vv5zFXhfwVSmZYEBNhxLZM1gnecMZej98jjPHOuSf8Xt9jMlfwxdGYuKU182YzM0UsEFKbMJlhMCHXXPFd5uxbtjWccv0qrok/t/AxZbuIZgZRtRBz7mIXYeyUYmwtjY0GXKtLHSNq9D98PQffsvBToqcJaq7u1kZ2eWIrARmoyA+eXMgTiZ32SpFtC9lPUO41a1wpxQaO8zTekmehg838QWJR4CgzMkl8dtvzOg4/iCmbJe0SnxvvNT5orDaxvPfF4vD3YnmG2c+VyOzy7+yYjnb5enbMoJ9FdJ7XS/IirPZJS3LD+iiyahHikulsWtS4ZDqbFkkumc6mRZdLZtjuFf9yx9vuuGE5tNC/0WfngDQK11E1TKy2wKsVVQ+ibsVqg53BtBhqqhlMi5/tTCRrX6xm+PLkZcY7kce3hsgMvrVEZvCtKR2Rwb+22FU4z+e3LSl7+7FD4qo5T6IGf6kXRqe6sid3ndBRUn3QM1DRulCELb8e6PnMtw7oLL75X2fxzfs6i2++z/uP0PO87vH2/1Zp3fsGM1mauA==}

# "Flip-flop 'is_a_inst_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m2_wb_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m2_wb_ppreg} -tag FLP_NO_ASRT -arg {is_a_inst_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFhnicnZLNTsJAFIWPMWHpE7hgpejCtCoF/EmIMS5YuPAFGmGQEIs0bY07n91zp4SO3mmFdjJtZ+Z859LLAXAIYIwhAlxjgBCG49WOAWdox4hDVjOOEfrUXnIVYU5myqehRwcF1khRXgebKVeP/j2erJGTMFjw3qVTgnec8W3K9QJLfFB7wnU5lngj9c3djFyhlHdbZUXkiPm7YqsQJmbNTz67VN/zHuKU9QPckn9UvMGK/itS0oGCs6T/ulzx6yufofLJ6JKTSP5lLzysUUzfISJFfLErMetl7KiuVpGBIlMv0fxtM1sptv+07m7ksA+17D7dHde67N7loy07Zy4kq8fOTmJT+TtbTy2ypRVS+6V1yup04nqzV+bcM6HPd0qd7PlrNSXOPfPX8qUu3ah1raa8uWdCP7dMnF8ljpNW6fNp/DnslG8/rAbBXQ==}

# "Flip-flop 'is_a_inst_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/d_e_ppreg.sv} -start_line 29 -end_line 83 -start_column 7 -end_column 4 -module {d_e_ppreg} -tag FLP_NO_ASRT -arg {is_a_inst_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAMjHicpVZNT8JAEH3GhKNHTx44GMWL4aMgfoYYTx48ePDaAAUkgpACMV787b4tSgu7M91qm263O/vezs7ORwHsA+ggQhd1NPlEbFsIcIk+emigzXeV341Ebu4AQ1xQPmCvxr5BAiUsMcMc62vv5zFXhfwVSmZYEBNhxLZM1gnecMZej98jjPHOuSf8Xt9jMlfwxdGYuKU182YzM0UsEFKbMJlhMCHXXPFd5uxbtjWccv0qrok/t/AxZbuIZgZRtRBz7mIXYeyUYmwtjY0GXKtLHSNq9D98PQffsvBToqcJaq7u1kZ2eWIrARmoyA+eXMgTiZ32SpFtC9lPUO41a1wpxQaO8zTekmehg838QWJR4CgzMkl8dtvzOg4/iCmbJe0SnxvvNT5orDaxvPfF4vD3YnmG2c+VyOzy7+yYjnb5enbMoJ9FdJ7XS/IirPZJS3LD+iiyahHikulsWtS4ZDqbFkkumc6mRZdLZtjuFf9yx9vuuGE5tNC/0WfngDQK11E1TKy2wKsVVQ+ibsVqg53BtBhqqhlMi5/tTCRrX6xm+PLkZcY7kce3hsgMvrVEZvCtKR2Rwb+22FU4z+e3LSl7+7FD4qo5T6IGf6kXRqe6sid3ndBRUn3QM1DRulCELb8e6PnMtw7oLL75X2fxzfs6i2++z/uP0PO87vH2/1Zp3fsGM1mauA==}

# "Flip-flop 'pc_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m2_wb_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m2_wb_ppreg} -tag FLP_NO_ASRT -arg {pc_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFhnicnZLNTsJAFIWPMWHpE7hgpejCtCoF/EmIMS5YuPAFGmGQEIs0bY07n91zp4SO3mmFdjJtZ+Z859LLAXAIYIwhAlxjgBCG49WOAWdox4hDVjOOEfrUXnIVYU5myqehRwcF1khRXgebKVeP/j2erJGTMFjw3qVTgnec8W3K9QJLfFB7wnU5lngj9c3djFyhlHdbZUXkiPm7YqsQJmbNTz67VN/zHuKU9QPckn9UvMGK/itS0oGCs6T/ulzx6yufofLJ6JKTSP5lLzysUUzfISJFfLErMetl7KiuVpGBIlMv0fxtM1sptv+07m7ksA+17D7dHde67N7loy07Zy4kq8fOTmJT+TtbTy2ypRVS+6V1yup04nqzV+bcM6HPd0qd7PlrNSXOPfPX8qUu3ah1raa8uWdCP7dMnF8ljpNW6fNp/DnslG8/rAbBXQ==}

# "Flip-flop 'mem_op_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/d_e_ppreg.sv} -start_line 29 -end_line 83 -start_column 7 -end_column 4 -module {d_e_ppreg} -tag FLP_NO_ASRT -arg {mem_op_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAMjHicpVZNT8JAEH3GhKNHTx44GMWL4aMgfoYYTx48ePDaAAUkgpACMV787b4tSgu7M91qm263O/vezs7ORwHsA+ggQhd1NPlEbFsIcIk+emigzXeV341Ebu4AQ1xQPmCvxr5BAiUsMcMc62vv5zFXhfwVSmZYEBNhxLZM1gnecMZej98jjPHOuSf8Xt9jMlfwxdGYuKU182YzM0UsEFKbMJlhMCHXXPFd5uxbtjWccv0qrok/t/AxZbuIZgZRtRBz7mIXYeyUYmwtjY0GXKtLHSNq9D98PQffsvBToqcJaq7u1kZ2eWIrARmoyA+eXMgTiZ32SpFtC9lPUO41a1wpxQaO8zTekmehg838QWJR4CgzMkl8dtvzOg4/iCmbJe0SnxvvNT5orDaxvPfF4vD3YnmG2c+VyOzy7+yYjnb5enbMoJ9FdJ7XS/IirPZJS3LD+iiyahHikulsWtS4ZDqbFkkumc6mRZdLZtjuFf9yx9vuuGE5tNC/0WfngDQK11E1TKy2wKsVVQ+ibsVqg53BtBhqqhlMi5/tTCRrX6xm+PLkZcY7kce3hsgMvrVEZvCtKR2Rwb+22FU4z+e3LSl7+7FD4qo5T6IGf6kXRqe6sid3ndBRUn3QM1DRulCELb8e6PnMtw7oLL75X2fxzfs6i2++z/uP0PO87vH2/1Zp3fsGM1mauA==}

# "Flip-flop 'rd_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m2_wb_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m2_wb_ppreg} -tag FLP_NO_ASRT -arg {rd_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFhnicnZLNTsJAFIWPMWHpE7hgpejCtCoF/EmIMS5YuPAFGmGQEIs0bY07n91zp4SO3mmFdjJtZ+Z859LLAXAIYIwhAlxjgBCG49WOAWdox4hDVjOOEfrUXnIVYU5myqehRwcF1khRXgebKVeP/j2erJGTMFjw3qVTgnec8W3K9QJLfFB7wnU5lngj9c3djFyhlHdbZUXkiPm7YqsQJmbNTz67VN/zHuKU9QPckn9UvMGK/itS0oGCs6T/ulzx6yufofLJ6JKTSP5lLzysUUzfISJFfLErMetl7KiuVpGBIlMv0fxtM1sptv+07m7ksA+17D7dHde67N7loy07Zy4kq8fOTmJT+TtbTy2ypRVS+6V1yup04nqzV+bcM6HPd0qd7PlrNSXOPfPX8qUu3ah1raa8uWdCP7dMnF8ljpNW6fNp/DnslG8/rAbBXQ==}

# "Flip-flop 'operand1_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/d_e_ppreg.sv} -start_line 29 -end_line 83 -start_column 7 -end_column 4 -module {d_e_ppreg} -tag FLP_NO_ASRT -arg {operand1_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAMjHicpVZNT8JAEH3GhKNHTx44GMWL4aMgfoYYTx48ePDaAAUkgpACMV787b4tSgu7M91qm263O/vezs7ORwHsA+ggQhd1NPlEbFsIcIk+emigzXeV341Ebu4AQ1xQPmCvxr5BAiUsMcMc62vv5zFXhfwVSmZYEBNhxLZM1gnecMZej98jjPHOuSf8Xt9jMlfwxdGYuKU182YzM0UsEFKbMJlhMCHXXPFd5uxbtjWccv0qrok/t/AxZbuIZgZRtRBz7mIXYeyUYmwtjY0GXKtLHSNq9D98PQffsvBToqcJaq7u1kZ2eWIrARmoyA+eXMgTiZ32SpFtC9lPUO41a1wpxQaO8zTekmehg838QWJR4CgzMkl8dtvzOg4/iCmbJe0SnxvvNT5orDaxvPfF4vD3YnmG2c+VyOzy7+yYjnb5enbMoJ9FdJ7XS/IirPZJS3LD+iiyahHikulsWtS4ZDqbFkkumc6mRZdLZtjuFf9yx9vuuGE5tNC/0WfngDQK11E1TKy2wKsVVQ+ibsVqg53BtBhqqhlMi5/tTCRrX6xm+PLkZcY7kce3hsgMvrVEZvCtKR2Rwb+22FU4z+e3LSl7+7FD4qo5T6IGf6kXRqe6sid3ndBRUn3QM1DRulCELb8e6PnMtw7oLL75X2fxzfs6i2++z/uP0PO87vH2/1Zp3fsGM1mauA==}

# "Flip-flop 'result_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/m2_wb_ppreg.sv} -start_line 25 -end_line 49 -start_column 7 -end_column 4 -module {m2_wb_ppreg} -tag FLP_NO_ASRT -arg {result_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAFhnicnZLNTsJAFIWPMWHpE7hgpejCtCoF/EmIMS5YuPAFGmGQEIs0bY07n91zp4SO3mmFdjJtZ+Z859LLAXAIYIwhAlxjgBCG49WOAWdox4hDVjOOEfrUXnIVYU5myqehRwcF1khRXgebKVeP/j2erJGTMFjw3qVTgnec8W3K9QJLfFB7wnU5lngj9c3djFyhlHdbZUXkiPm7YqsQJmbNTz67VN/zHuKU9QPckn9UvMGK/itS0oGCs6T/ulzx6yufofLJ6JKTSP5lLzysUUzfISJFfLErMetl7KiuVpGBIlMv0fxtM1sptv+07m7ksA+17D7dHde67N7loy07Zy4kq8fOTmJT+TtbTy2ypRVS+6V1yup04nqzV+bcM6HPd0qd7PlrNSXOPfPX8qUu3ah1raa8uWdCP7dMnF8ljpNW6fNp/DnslG8/rAbBXQ==}

# "Flip-flop 'operand2_out' does not have any asynchronous set or reset"
check_superlint -waiver -add -source_file {../src/d_e_ppreg.sv} -start_line 29 -end_line 83 -start_column 7 -end_column 4 -module {d_e_ppreg} -tag FLP_NO_ASRT -arg {operand2_out} -comment {This design is using synchronous reset(active low)} -persistency_data {AAAMjHicpVZNT8JAEH3GhKNHTx44GMWL4aMgfoYYTx48ePDaAAUkgpACMV787b4tSgu7M91qm263O/vezs7ORwHsA+ggQhd1NPlEbFsIcIk+emigzXeV341Ebu4AQ1xQPmCvxr5BAiUsMcMc62vv5zFXhfwVSmZYEBNhxLZM1gnecMZej98jjPHOuSf8Xt9jMlfwxdGYuKU182YzM0UsEFKbMJlhMCHXXPFd5uxbtjWccv0qrok/t/AxZbuIZgZRtRBz7mIXYeyUYmwtjY0GXKtLHSNq9D98PQffsvBToqcJaq7u1kZ2eWIrARmoyA+eXMgTiZ32SpFtC9lPUO41a1wpxQaO8zTekmehg838QWJR4CgzMkl8dtvzOg4/iCmbJe0SnxvvNT5orDaxvPfF4vD3YnmG2c+VyOzy7+yYjnb5enbMoJ9FdJ7XS/IirPZJS3LD+iiyahHikulsWtS4ZDqbFkkumc6mRZdLZtjuFf9yx9vuuGE5tNC/0WfngDQK11E1TKy2wKsVVQ+ibsVqg53BtBhqqhlMi5/tTCRrX6xm+PLkZcY7kce3hsgMvrVEZvCtKR2Rwb+22FU4z+e3LSl7+7FD4qo5T6IGf6kXRqe6sid3ndBRUn3QM1DRulCELb8e6PnMtw7oLL75X2fxzfs6i2++z/uP0PO87vH2/1Zp3fsGM1mauA==}

# "Net 'DM1.CS' driving enable pin of one or more flip-flops, is constant [Flip-flop: DM1.i_SRAM.latched_DO[0]]"
check_superlint -waiver -add -instance {DM1} -tag FLP_NR_ENCT -arg {DM1.CS *} -wildcard_argument -comment {SRAM Module} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net 'DO' defined in design-unit 'SRAM', is inferred as a tri-state buffer"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 165 -end_line 168 -start_column 3 -end_column 6 -instance {IM1.i_SRAM} -tag NET_IS_INTB -arg {DO SRAM} -comment {SRAM Module} -persistency_data {AAABAHicLY7LisJQEETPILiYhUvXs9NxpVEYH4giuvYTNDGZUfAFCQwa/HdPrt6ii6K7q/oCNWBOl4yhHBGHysQPKQl9evKInfNIHoR5HCY7OeFXH9QpuHDl9T7eVb2m20f+5Rs5G10XTvqgwZdIvPXHgbOdbehUWLKWp1ZbteKbmfpoSmHCXk9qVrU1tl+6tTC/sJ/TUR/Uua7S/7e8cechJt74DPmZ99InSzQidQ==}

# "Net 'IM1.i_SRAM.Memory_byte0' declared in design-unit 'SRAM' neither has driver nor any load"
check_superlint -waiver -add -instance {IM1.i_SRAM} -tag NET_NO_LDDR -arg {IM1.i_SRAM.Memory_byte0 SRAM} -comment {SRAM Module} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net 'IM1.i_SRAM.Memory_byte1' declared in design-unit 'SRAM' neither has driver nor any load"
check_superlint -waiver -add -instance {IM1.i_SRAM} -tag NET_NO_LDDR -arg {IM1.i_SRAM.Memory_byte1 SRAM} -comment {SRAM Module} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net 'IM1.i_SRAM.Memory_byte2' declared in design-unit 'SRAM' neither has driver nor any load"
check_superlint -waiver -add -instance {IM1.i_SRAM} -tag NET_NO_LDDR -arg {IM1.i_SRAM.Memory_byte2 SRAM} -comment {SRAM Module} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net 'IM1.i_SRAM.Memory_byte3' declared in design-unit 'SRAM' neither has driver nor any load"
check_superlint -waiver -add -instance {IM1.i_SRAM} -tag NET_NO_LDDR -arg {IM1.i_SRAM.Memory_byte3 SRAM} -comment {SRAM Module} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net 'DM1.i_SRAM.Memory_byte0' declared in design-unit 'SRAM' neither has driver nor any load"
check_superlint -waiver -add -instance {DM1.i_SRAM} -tag NET_NO_LDDR -arg {DM1.i_SRAM.Memory_byte0 SRAM} -comment {SRAM Module} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net 'DM1.i_SRAM.Memory_byte1' declared in design-unit 'SRAM' neither has driver nor any load"
check_superlint -waiver -add -instance {DM1.i_SRAM} -tag NET_NO_LDDR -arg {DM1.i_SRAM.Memory_byte1 SRAM} -comment {SRAM Module} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net 'DM1.i_SRAM.Memory_byte2' declared in design-unit 'SRAM' neither has driver nor any load"
check_superlint -waiver -add -instance {DM1.i_SRAM} -tag NET_NO_LDDR -arg {DM1.i_SRAM.Memory_byte2 SRAM} -comment {SRAM Module} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net 'DM1.i_SRAM.Memory_byte3' declared in design-unit 'SRAM' neither has driver nor any load"
check_superlint -waiver -add -instance {DM1.i_SRAM} -tag NET_NO_LDDR -arg {DM1.i_SRAM.Memory_byte3 SRAM} -comment {SRAM Module} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net '_cpu._from_m1_m2_ppreg_mem_op_out[4:3]' declared in design-unit 'cpu' has a driver but has no load"
check_superlint -waiver -add -instance {_cpu} -tag NET_NO_LOAD -arg {_cpu._from_m1_m2_ppreg_mem_op_out[4:3] cpu} -comment {Keep for lowering routing complexity} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net '_from_cpu_dsram_addr[1:0]' declared in design-unit 'top' has a driver but has no load"
check_superlint -waiver -add -instance {} -tag NET_NO_LOAD -arg {_from_cpu_dsram_addr[1:0] top} -comment {Keep for further different memory addressing} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net '_from_cpu_isram_addr[1:0]' declared in design-unit 'top' has a driver but has no load"
check_superlint -waiver -add -instance {} -tag NET_NO_LOAD -arg {_from_cpu_isram_addr[1:0] top} -comment {Keep for further different memory addressing} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net '_cpu._from_m2_wb_ppreg_csr_op_out[14:12]' declared in design-unit 'cpu' has a driver but has no load"
check_superlint -waiver -add -instance {_cpu} -tag NET_NO_LOAD -arg {_cpu._from_m2_wb_ppreg_csr_op_out[14:12] cpu} -comment {Keep for lowering routing complexity} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "Net '_cpu._from_m2_wb_ppreg_pc_out' declared in design-unit 'cpu' has a driver but has no load"
check_superlint -waiver -add -instance {_cpu} -tag NET_NO_LOAD -arg {_cpu._from_m2_wb_ppreg_pc_out cpu} -comment {Keep for debugging and further using(interrupt)} -persistency_data {AAAAInicY2BgYGaAADaGEoZ8hgIGNAAAGjoBXQ==}

# "The design-unit 'SRAM' contains synchronous as well as asynchronous logic. Asynchronous logic is present at 'DO[0]' and Synchronous logic at 'latched_DO[0]'"
check_superlint -waiver -add -source_file {../sim/SRAM/SRAM_rtl.sv} -start_line 39 -end_line 39 -start_column 35 -end_column 45 -tag MOD_IS_SYAS -arg {SRAM * *} -wildcard_argument -comment {SRAM Module} -persistency_data {AAAAfHicLYw7CoBAEEOfCB7Bc/gDFRsLe48g+xMLQYu9P8bVDHlNMgFyYKYiMIgNJjnoejyWllocccobsUu5SYkTLbv+oCBycfMp+/2q5FQ/qn1o1bOxsDI9qIIPSg==}

