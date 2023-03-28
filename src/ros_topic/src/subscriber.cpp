#include "ros/ros.h"
#include "ros_topic/demo.h" 
#include <iostream>
#include "cmath"
#include "std_msgs/Float32.h"
#include "boost/thread.hpp"

using namespace std;

class SIN_SUB_PUB {
 	public:
 		SIN_SUB_PUB();
		void topic_cb( ros_topic::demo::ConstPtr msg);
        void LBF();
        void LBF_Thread();
        float get_Value(){return Val;}
	
    private:
        float Val;
        float Ext_Val;
        float _G;
        float _Tc;
        float _Ts;
    	ros::NodeHandle nh;
    	ros::Subscriber sub;
        ros::Publisher pub;
        ros::Rate rate;
};

SIN_SUB_PUB::SIN_SUB_PUB(): rate(10) {
    Val=0;
    Ext_Val=0;
    _G=1;
    _Tc=1;
    _Ts=0.1;
 	sub = nh.subscribe("/sinu", 1, &SIN_SUB_PUB::topic_cb, this);
    pub = nh.advertise<std_msgs::Float32>("/filtered_sin", 1);
}

void SIN_SUB_PUB::topic_cb( ros_topic::demo::ConstPtr msg ) {

    ROS_INFO("Listened: AMPLITUDE: [%f], PERIOD: [%f], VALUE: [%f]", msg->ampiezza, msg->periodo, msg->valore);
    Ext_Val = msg->valore;
}

void SIN_SUB_PUB::LBF(){

    std_msgs::Float32 F;

    while(true){

        Val=(1-_Ts/_Tc)*Val+_G*_Ts/_Tc*Ext_Val;
        ROS_INFO("FILTERED VALUE: %f", Val);
        F.data=Val;
        pub.publish(F);
        rate.sleep();

    }

}

void SIN_SUB_PUB::LBF_Thread(){

    boost::thread(&SIN_SUB_PUB::LBF, this );

}

int main( int argc, char** argv ) {

    ros::init(argc, argv, "ros_topic_subscriber");

    SIN_SUB_PUB _SSP;

	_SSP.LBF_Thread();

	ros::spin(); 

    return 0;
}
