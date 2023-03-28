
//include ros header file
#include "ros/ros.h" 
//header file of the message to publish
#include "std_msgs/Float32.h"  
#include "ros_topic/demo.h"
//#include <iostream>
//include the header file of c++ for sin


int main(int argc, char **argv) {

    float _A;//ampiezza
        float _P=2;//Periodo
        float _V;//valore sinusoide
		float time;
	//Initialize the ROS node with name: ros_topic_publisher
	ros::init(argc, argv,"ros_topic_publisher");
	
	//Declare the node handle: our interface with the ROS system
	ros::NodeHandle n;
	ros::Publisher p;

	p= n.advertise<ros_topic::demo> ("/sinu", 1);
	
	_A=atof(argv[1]);

	ros::Rate rate(10); 

	


	// Typical loop: neverending loop: a controller works until actuators are activated
	//		while (ros::ok()): works until the ROS node is not terminated (by the user with ctrl+c or similar)
	while ( ros::ok() ) {

       _V=_A*(sin((2*M_PI*time)/_P));
                time+=1.0/10.0;
		//Message to publish
		ros_topic::demo msg;
		 
		msg.ampiezza=_A;
		

		//ROS_INFO: Like a printf, but with the timestamp
		ROS_INFO("%f",msg.ampiezza); 
		

		//Publish the message over the ROS network
		//p.publish(msg);

		msg.periodo=_P;
		ROS_INFO("%f",msg.periodo); 
		//Publish the message over the ROS network
	

		msg.valore=_V;
		ROS_INFO("%f",msg.valore); 
		//Publish the message over the ROS network
		p.publish(msg);
		
		//Rate to maintain the 10 Hz
		rate.sleep();
	}
	
	return 0;
}
