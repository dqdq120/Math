extends Control
var colors = [
  Color(1, 0.5, 0),    # Orange
	Color(1, 0.7, 0),    # Yellow-Orange
	Color(1, 1, 0),      # Yellow
	Color(0.7, 1, 0),    # Yellow-Green
	Color(0.3, 1, 0),    # Greenish-Yellow
	Color(0, 1, 0),      # Green
	Color(0, 1, 0.5),    # Green-Cyan
	Color(0, 1, 1),      # Cyan
	Color(0, 0.7, 1),    # Sky Blue
	Color(0, 0.3, 1),    # Light Blue
	Color(0, 0, 1),      # Blue
	Color(0.3, 0, 1),    # Blue-Violet
	Color(0.5, 0, 1),    # Purple
	Color(0.7, 0, 1),    # Magenta
	Color(1, 0, 1),      # Pink
	Color(1, 0, 0.7),    # Hot Pink
	Color(1, 0, 0.3),    # Deep Pink
	Color(1, 0.2, 0.2),  # Light Red
	Color(1, 0.5, 0.5),  # Soft Pink
	Color(1, 0.7, 0.7),  # Pastel Pink
	Color(0.9, 0.9, 0.9),# Light Gray
	Color(0.7, 0.7, 0.7),# Gray
	Color(0.5, 0.5, 0.5),# Dark Gray
	Color(0.3, 0.3, 0.3),# Very Dark Gray
	Color(0.2, 0.2, 0.2),# Almost Black
	Color(0, 0, 0),      # Black
	Color(1, 1, 1),      # White
	Color(0.8, 0.4, 0.1) # Warm Brown
]

var courses=["Algebra 1","Algebra 2"]
func _ready() -> void:
	var i =0
	for course in courses:
		var button = Button.new()
		button.text = course

		# Set the button to full width inside the container
		button.anchor_left = 0
		button.anchor_right = 1  # Full width
		button.anchor_top = i*0.3  # Full width
		button.anchor_bottom = 0.3*(i+1)  # Full width

		var button_style = StyleBoxFlat.new()
		button_style.bg_color = colors[i]
		button_style.border_width_bottom=3
		button.add_theme_stylebox_override("normal", button_style)
				# Add the button to the container
		add_child(button)
		i+=1
