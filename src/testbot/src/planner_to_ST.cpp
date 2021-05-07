//版本：整合底盤、通訊、導航用
//用處：把cmd_vel轉換成txST1的topic
#include <ros/ros.h>
#include <typeinfo>
#include <stdio.h>
#include <std_msgs/Int32MultiArray.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Twist.h>

using namespace std;
float current_speed[2];
ros::Publisher txST1;
std_msgs::Int32MultiArray toST_info;

void cmd_callback(const geometry_msgs::Twist &twist_aux){
    //ROS_INFO("in to call back");
    //current_speed[1]= twist_aux.linear.y;
    //ROS_INFO("output v : %f",current_speed[0]);
    //ROS_INFO("output omega : %f",current_speed[1]);
    toST_info.data[0] = ( int(twist_aux.linear.x*1000) );
    toST_info.data[1] = ( int(twist_aux.angular.z*1000) );
    txST1.publish(toST_info);
};

int main(int argc, char **argv){
    ros::init(argc, argv, "planner_to_ST");
    ros::NodeHandle n;
    ros::Subscriber cmd_vel_sub = n.subscribe("cmd_vel",100, &cmd_callback) ;
    txST1= n.advertise<std_msgs::Int32MultiArray>("txST1", 1000);

    //default
    for(int i = 0;i<2;i++){
        toST_info.data.push_back(0 );
    }            
    ros::spin();
    return 0;
}
