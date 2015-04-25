#include "ros/ros.h"
#include "std_msgs/String.h"
#include "robair_simulation/collision_event.h"
#include <iostream>

using namespace std;

int main(int argc, char **argv)
{
        ros::init(argc, argv, "publisher");

        ros::NodeHandle n;

        ros::Publisher collision_event_pub = n.advertise
                <robair_simulation::collision_event>("collision_topic", 1000);

        robair_simulation::collision_event collision_msg;
        char keep = 'y';
        char collision;
        while (keep == 'y') {
                cout << "Publier une collision ? 1,0 ou n" << endl;
                cin >> collision;
                if (collision == '1') {
                        collision_msg.collision = 1;
                        collision_event_pub.publish(collision_msg);
                } else if (collision == '0') {
                        collision_msg.collision = 0;
                        collision_event_pub.publish(collision_msg);
                }
                cout << "continue ? y (yes), n(non) " << endl;
                cin >> keep;
        }
        return 0;
}
