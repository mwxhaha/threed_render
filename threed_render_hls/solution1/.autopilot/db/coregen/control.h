// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of mesh_transmission
//        bit 31~0 - mesh_transmission[31:0] (Read/Write)
// 0x14 : Data signal of mesh_transmission
//        bit 31~0 - mesh_transmission[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of screen_transmission
//        bit 31~0 - screen_transmission[31:0] (Read/Write)
// 0x20 : Data signal of screen_transmission
//        bit 31~0 - screen_transmission[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_MESH_TRANSMISSION_DATA   0x10
#define CONTROL_BITS_MESH_TRANSMISSION_DATA   64
#define CONTROL_ADDR_SCREEN_TRANSMISSION_DATA 0x1c
#define CONTROL_BITS_SCREEN_TRANSMISSION_DATA 64
