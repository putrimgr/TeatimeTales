#include <stdio.h>

#include "concord/discord.h"

int
main(int argc, char *argv[])
{
	const char *config_file;
	if (argc > 1) config_file = argv[1];
	else config_file = "config.json";

	ccord_global_init();
	struct discord *client = discord_config_init(config_file);

	discord_cleanup(client);
	ccord_global_cleanup();

	return 0;
}
