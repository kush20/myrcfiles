from display_box import show_overlay

import sys




show_overlay( sys.argv[1] , display_ms=0, bg="#565656", fg="white", font=("Segoe UI", 10, "bold"),
    x=500, y=50, width=200, height=100, opacity=1.0, fade_interval=100, fade_rate=0.85 )

