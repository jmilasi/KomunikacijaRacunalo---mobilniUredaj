// This sketch requires the OscP5 library:
// http://www.sojamo.de/libraries/oscP5/

// and a smart phone running Control:
// http://charlie-roberts.com/Control/

// Both computer and phone must be connected
// to the same wireless network.

// Once Control is running, "destinations"
// must be configured to point to the
// computer's IP address, port 10000.

// To find your IP address, use a search engine
// and type "how to find local ip address".

import oscP5.*;
float X, Y, Z;
OscP5 osc;

void setup() {
  X = 0;
  Y = 0;
  Z = 0;
  osc = new OscP5(this, 10000);
  osc.plug(this, "shake", "/accelerometer");
}
void draw() {
   background(X, Y, Z);
}
void shake(float x, float y, float z) {
  X = x * 2;
  Y = y * 2;
  Z = z * 2;
}