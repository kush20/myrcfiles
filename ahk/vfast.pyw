from display_box import show_overlay
import sys

show_overlay( sys.argv[1] , display_ms=0, bg="#333333", fg="white", font=("Segoe UI", 10, "bold"),
    x=250, y=50, width=300, height=100, opacity=1.0, fade_interval=70, fade_rate=0.85 )

