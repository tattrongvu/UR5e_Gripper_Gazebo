#! /usr/bin/env python2.7
import sys
import rospy
import numpy as np

from sensor_msgs.msg import Image
import cv2, cv_bridge

#image_topic:'/myur5e/overview/overview_image_raw'
#/myur5e/wrist_camera/wrist_image_raw

class ur5_vision:
  def __init__(self,image_topic='/myur5e/overview/overview_image_raw', \
                resize = False, \
                image_size=(512,512)):

    self.topic = image_topic
    self.bridge = cv_bridge.CvBridge()
    self.image_sub = rospy.Subscriber(self.topic, Image, self._image_callback)
    self.resize = resize
    self.image_size = image_size
    self._image = None

  def _image_callback(self,msg):
    try:
      # BEGIN BRIDGE
      img = self.bridge.imgmsg_to_cv2(msg,desired_encoding='bgr8')
      if self.resize:
        img = cv2.resize(img, self.image_size, interpolation = cv2.INTER_AREA)
      self._image = img
    except cv_bridge.CvBridgeError as e:
      print(e)

  def get_image(self):
    return self._image

def main():
  rospy.init_node('vision')
  myvs=ur5_vision(resize=False)
  cv2.namedWindow("Image window", 1)
  #rospy.spin()
  while not rospy.is_shutdown():
    cv_image = myvs.get_image()
    if cv_image is not None:
      cv2.imshow("Image window", cv_image)
    if cv2.waitKey(1)==27:
      cv2.destroyAllWindows()
      break
    # img = myvs.get_image()
    # img = np.array(img)

if __name__ == '__main__':
  main()

