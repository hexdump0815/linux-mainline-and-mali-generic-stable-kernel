#include <linux/build-salt.h>
#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

MODULE_INFO(intree, "Y");

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

MODULE_ALIAS("of:N*T*Carm,malit6xx");
MODULE_ALIAS("of:N*T*Carm,malit6xxC*");
MODULE_ALIAS("of:N*T*Carm,mali-midgard");
MODULE_ALIAS("of:N*T*Carm,mali-midgardC*");
MODULE_ALIAS("of:N*T*Carm,mali-t720");
MODULE_ALIAS("of:N*T*Carm,mali-t720C*");
MODULE_ALIAS("of:N*T*Carm,mali-t760");
MODULE_ALIAS("of:N*T*Carm,mali-t760C*");
MODULE_ALIAS("of:N*T*Carm,mali-t820");
MODULE_ALIAS("of:N*T*Carm,mali-t820C*");
MODULE_ALIAS("of:N*T*Carm,mali-t830");
MODULE_ALIAS("of:N*T*Carm,mali-t830C*");
MODULE_ALIAS("of:N*T*Carm,mali-t860");
MODULE_ALIAS("of:N*T*Carm,mali-t860C*");
MODULE_ALIAS("of:N*T*Carm,mali-t880");
MODULE_ALIAS("of:N*T*Carm,mali-t880C*");

MODULE_INFO(srcversion, "D449AB193086DCE138FED94");
