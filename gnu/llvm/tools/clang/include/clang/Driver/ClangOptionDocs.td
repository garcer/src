//==--- ClangOptionDocs.td - Option documentation -------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

def GlobalDocumentation {
  code Intro =[{..
  -------------------------------------------------------------------
  NOTE: This file is automatically generated by running clang-tblgen
  -gen-opt-docs. Do not edit this file by hand!!
  -------------------------------------------------------------------

=====================================
Clang command line argument reference
=====================================
.. contents::
   :local:

Introduction
============

This page lists the command line arguments currently supported by the
GCC-compatible ``clang`` and ``clang++`` drivers.

}];

  string Program = "clang";
  list<string> ExcludedFlags = ["HelpHidden", "NoDriverOption",
                                "CLOption", "Unsupported", "Ignored"];
}

include "Options.td"
