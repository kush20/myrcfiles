import tkinter as tk
import time
import threading

def show_overlay(
    text,
    display_ms=0,
    bg="black",
    fg="white",
    font=("Segoe UI", 20, "bold"),
    x=100,
    y=100,
    width=300,
    height=100,
    opacity=1.0,
    fade_interval=100,
    fade_rate=0.85
):
    root = tk.Tk()
    root.overrideredirect(True)  # No border
    root.attributes('-topmost', True)
    root.attributes('-alpha', opacity)
    root.geometry(f"{width}x{height}+{x}+{y}")
    root.configure(bg=bg)

    label = tk.Label(root, text=text, fg=fg, bg=bg, font=font)
    label.pack(expand=True)

    def fade_out():
        time.sleep(display_ms / 1000 if display_ms > 0 else 0.01)
        nonlocal opacity
        while opacity > 0.05:
            opacity *= fade_rate
            root.attributes('-alpha', opacity)
            time.sleep(fade_interval / 1000)
        root.destroy()

    threading.Thread(target=fade_out, daemon=True).start()
    root.mainloop()
