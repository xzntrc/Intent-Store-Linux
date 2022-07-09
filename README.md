# Intent-Store-Linux
Quick install script to install the [Intent Launcher](https://intent.store/) on most Linux-based distributions.

Simply install with one command:
```sh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/xzntrc/Intent-Store-Linux/main/install.sh)"
```

After installing, you should be able to run Intent straight from your command line using `intent` which also support wrapping like:
```
__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME="nvidia" __VK_LAYER_NV_optimus="NVIDIA_only" __GL_SHOW_GRAPHICS_OSD=1 intent
```

Intent can also be run from a Desktop Environment or via dmenu thanks to the `.desktop` file.
