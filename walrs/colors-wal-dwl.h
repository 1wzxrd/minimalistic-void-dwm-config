/* Taken from https:
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }
static const float rootcolor[]             = COLOR(0x0b182eff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0xd9e8f9ff, 0x0b182eff, 0x405c82ff },
	[SchemeSel]  = { 0xd9e8f9ff, 0x6e87b0ff, 0x61779aff },
	[SchemeUrg]  = { 0xd9e8f9ff, 0x61779aff, 0x6e87b0ff },
};
