#include <stdio.h>
#include <vlc/vlc.h>

int main(int argc, char *argv[]) {
    // Initialize VLC
    libvlc_instance_t *vlc_instance;
    libvlc_media_player_t *media_player;

    const char *file_path = "demo.mp4";
    const char *vlc_args[] = {
        "-I", "dummy", // Don't use any interface
        "--ignore-config", // Don't use VLC's config
        "--no-video-title-show", // Don't display the video title
    };

    vlc_instance = libvlc_new(sizeof(vlc_args) / sizeof(vlc_args[0]), vlc_args);
    if (!vlc_instance) {
        fprintf(stderr, "Failed to initialize LibVLC\n");
        return 1;
    }

    // Create media player
    libvlc_media_t *media = libvlc_media_new_path(vlc_instance, file_path);
    media_player = libvlc_media_player_new_from_media(media);
    libvlc_media_release(media);

    // Attach media player to window
    libvlc_media_player_set_hwnd(media_player, NULL);

    // Play media
    libvlc_media_player_play(media_player);

    // Main loop
    printf("Press any key to exit...\n");
    getchar();

    // Release resources
    libvlc_media_player_stop(media_player);
    libvlc_media_player_release(media_player);
    libvlc_release(vlc_instance);

    return 0;
}
