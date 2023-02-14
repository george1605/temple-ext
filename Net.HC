extern U0 NetWrite(U8* info, U32 size); // does not include drivers
extern U0 NetRead(U8* info, U32 size);

public class MACAddr {
  U8 info[6];
};

public class IGP {
  U8 gap[12];
};

public class EthFrame {
  U64 start; // preamble
  MACAddr dest;
  MACAddr src;
  #ifdef ETH_8021Q
  U32 tag;
  #endif
  U16 type;
  U8* payload;
  U32 check; 
  IGP gap;
};

public class IPHeader {
  // smth here
};

U0 NetSendPack(EthFrame* eth)
{
  if(eth == NULL)
    return;
  NetWrite((U8*)eth, sizeof(EthFrame) + strlen(eth->payload));
}
