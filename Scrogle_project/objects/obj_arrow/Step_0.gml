y = origin_y - 32 * cos(degtorad(lives))
image_alpha = lives / 480

lives -= 4
if(lives <= 0) {instance_destroy()}