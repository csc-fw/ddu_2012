#ifdef __cplusplus
extern "C" {
#endif

#include <stdio.h>
#ifndef DLL_LINKAGE
#if defined(_MSC_VER)
#define DLL_LINKAGE __declspec(dllimport)
#else
#define DLL_LINKAGE
#endif
#endif

typedef struct t_vcs_vhdl_ports {
    void (*fn_p)();
union {
      void *b;
      void **v;
    } port_p;
} s_vcs_vhdl_ports, *p_vcs_vhdl_ports;

extern DLL_LINKAGE p_vcs_vhdl_ports vcs_vhdl_ports_p;

extern void vcs_apply_val();

typedef void (*fn_p_T)();

void vcs_init_out_cbk_array()
{
}

#ifdef __cplusplus
}
#endif

