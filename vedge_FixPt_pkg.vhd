-- -------------------------------------------------------------
-- 
-- File Name: G:\AI\IIT BHU\codegen\vedge\hdlsrc\vedge_FixPt_pkg.vhd
-- Created: 2016-05-25 12:40:40
-- 
-- Generated by MATLAB 8.1, MATLAB Coder 2.4 and HDL Coder 3.2
-- 
-- 
-- -------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE vedge_FixPt_pkg IS
  TYPE vector_of_unsigned8 IS ARRAY (NATURAL RANGE <>) OF unsigned(7 DOWNTO 0);
  TYPE vector_of_signed11 IS ARRAY (NATURAL RANGE <>) OF signed(10 DOWNTO 0);
  TYPE vector_of_signed9 IS ARRAY (NATURAL RANGE <>) OF signed(8 DOWNTO 0);
  TYPE vector_of_signed64 IS ARRAY (NATURAL RANGE <>) OF signed(63 DOWNTO 0);
  TYPE vector_of_signed12 IS ARRAY (NATURAL RANGE <>) OF signed(11 DOWNTO 0);
  TYPE vector_of_signed3 IS ARRAY (NATURAL RANGE <>) OF signed(2 DOWNTO 0);
END vedge_FixPt_pkg;
