from display_box import show_overlay

import sys




show_overlay( sys.argv[1] , display_ms=0, bg="#BBDEFB", fg="white", font=("Segoe UI", 20, "bold"),
    x=1600, y=900, width=300, height=100, opacity=1.0, fade_interval=1000, fade_rate=0.85 )

