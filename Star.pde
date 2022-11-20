class Star {
    float x;
    float y;
    float z;
    
    float pz;

    Star() { // constructor for the star class
        x = random( - width, width);
        y = random( - height, height);
        z = random(width);
    }
    
    // update the star position and size based on the z value of the star (how far away it is)
    void update() {  
        z = z - speed;
        if (z < 1) {
            z = width;
            x = random( - width, width);
            y = random( - height, height);
            pz = z;
        }
    }
    
    // show the star based on the z value of the star (how far away it is) 
    //and draws the line between the current star and the previous star to simulate a hyperdrive effect
    void show() { 
        fill(255);
        noStroke();
        
        float sx = map(x / z, 0, 1, 0, width);
        float sy = map(y / z, 0, 1, 0, height);
        
        float r = map(z, 0, width, 16, 0);

        float px = map(x / pz, 0, 1, 0, width);
        float py = map(y / pz, 0, 1, 0, height);

        pz = z;

        stroke(255);
        line(px, py, sx, sy);

    }
}