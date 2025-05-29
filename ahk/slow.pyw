from display_box import show_overlay

import sys




show_overlay( sys.argv[1] , display_ms=0, bg="Blue", fg="White", font=("Segoe UI", 20, "bold"),
    x=1600, y=600, width=200, height=100, opacity=1.0, fade_interval=500, fade_rate=0.85 )

