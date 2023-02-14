U32 GetFlags()
{
  U32 flg;
  asm {
    PUSHFL;
    POP &flg
  }
  return flg;
}

