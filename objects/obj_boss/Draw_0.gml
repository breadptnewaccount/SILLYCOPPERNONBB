draw_set_color(c_red);
draw_rectangle(x - 40, y - 30, x + 40, y - 20, false); // Health bar outline
draw_set_color(c_lime);
draw_rectangle(x - 39, y - 29, x - 39 + 78 * (boss_health / max_health), y - 21, true); // Health bar fill