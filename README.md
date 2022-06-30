# PCE_Mouse

This is a quick test program I put together for PC Engine controllers/mouse.
It is intended more as a proof-of-concept than as a final product.

## TO RUN

Load the ROM (pce_mouse.pce from the src/ folder) onto an Everdrive or other media;
note that this ROM has a 512-byte header.

The program will immediately try to identify whether there is a tap attached, and
whether the first controller is a mouse.  When keys are hit on the controller,
the numbers next to the controller number will change based on the bit pattern.

When/if the "I" button (or right button on the mouse) is pressed, the system will
either:
 - Check for mouse (and initialize) if it was not operating in mouse mode

 OR

 - Toggle mouse mode off, to display raw data from the controller(s).

This program is capable of treating both 2- and 6-button controllers, as well
as PC Engine mouse.


## TO COMPILE

This program is intended to be compiled by HuC; I used an old version (v3.20) because
it was handy, but it's a simple program and ought to be compilable by other versions.

To compile, I used:

```huc -v pce_mouse.c```

Note: The included ROM (pce_mouse.pce) has a header.

