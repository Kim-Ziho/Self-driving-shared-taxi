#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from ssafy_2.srv import GpsService

def handle_gps_service(req):
    rospy.loginfo('GPS data received: start_latitude: {}, start_longitude: {}, end_latitude: {}, end_longitude: {}'.format(
        req.start_latitude, req.start_longitude, req.end_latitude, req.end_longitude))
    
    print('Received GPS data:', req.start_latitude, req.start_longitude, req.end_latitude, req.end_longitude)

    rate = rospy.Rate(1) # 1 hz
    while not rospy.is_shutdown():
        try:
            print('1')
        except rospy.ServiceException as e:
            rospy.logwarn('no respone')

        rate.sleep()


    # 처리 로직 추가
    return "Success"

if __name__ == '__main__':
    rospy.init_node('gps_service_server')
    rospy.Service('/gps_service', GpsService, handle_gps_service)
    rospy.loginfo('GPS service is ready')
    rospy.spin()