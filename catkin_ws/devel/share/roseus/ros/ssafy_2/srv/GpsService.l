;; Auto-generated. Do not edit!


(when (boundp 'ssafy_2::GpsService)
  (if (not (find-package "SSAFY_2"))
    (make-package "SSAFY_2"))
  (shadow 'GpsService (find-package "SSAFY_2")))
(unless (find-package "SSAFY_2::GPSSERVICE")
  (make-package "SSAFY_2::GPSSERVICE"))
(unless (find-package "SSAFY_2::GPSSERVICEREQUEST")
  (make-package "SSAFY_2::GPSSERVICEREQUEST"))
(unless (find-package "SSAFY_2::GPSSERVICERESPONSE")
  (make-package "SSAFY_2::GPSSERVICERESPONSE"))

(in-package "ROS")





(defclass ssafy_2::GpsServiceRequest
  :super ros::object
  :slots (_start_latitude _start_longitude _end_latitude _end_longitude ))

(defmethod ssafy_2::GpsServiceRequest
  (:init
   (&key
    ((:start_latitude __start_latitude) 0.0)
    ((:start_longitude __start_longitude) 0.0)
    ((:end_latitude __end_latitude) 0.0)
    ((:end_longitude __end_longitude) 0.0)
    )
   (send-super :init)
   (setq _start_latitude (float __start_latitude))
   (setq _start_longitude (float __start_longitude))
   (setq _end_latitude (float __end_latitude))
   (setq _end_longitude (float __end_longitude))
   self)
  (:start_latitude
   (&optional __start_latitude)
   (if __start_latitude (setq _start_latitude __start_latitude)) _start_latitude)
  (:start_longitude
   (&optional __start_longitude)
   (if __start_longitude (setq _start_longitude __start_longitude)) _start_longitude)
  (:end_latitude
   (&optional __end_latitude)
   (if __end_latitude (setq _end_latitude __end_latitude)) _end_latitude)
  (:end_longitude
   (&optional __end_longitude)
   (if __end_longitude (setq _end_longitude __end_longitude)) _end_longitude)
  (:serialization-length
   ()
   (+
    ;; float64 _start_latitude
    8
    ;; float64 _start_longitude
    8
    ;; float64 _end_latitude
    8
    ;; float64 _end_longitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _start_latitude
       (sys::poke _start_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _start_longitude
       (sys::poke _start_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_latitude
       (sys::poke _end_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_longitude
       (sys::poke _end_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _start_latitude
     (setq _start_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _start_longitude
     (setq _start_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_latitude
     (setq _end_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_longitude
     (setq _end_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ssafy_2::GpsServiceResponse
  :super ros::object
  :slots (_result ))

(defmethod ssafy_2::GpsServiceResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ssafy_2::GpsService
  :super ros::object
  :slots ())

(setf (get ssafy_2::GpsService :md5sum-) "a521110ed02262d566473f15c18bcdf5")
(setf (get ssafy_2::GpsService :datatype-) "ssafy_2/GpsService")
(setf (get ssafy_2::GpsService :request) ssafy_2::GpsServiceRequest)
(setf (get ssafy_2::GpsService :response) ssafy_2::GpsServiceResponse)

(defmethod ssafy_2::GpsServiceRequest
  (:response () (instance ssafy_2::GpsServiceResponse :init)))

(setf (get ssafy_2::GpsServiceRequest :md5sum-) "a521110ed02262d566473f15c18bcdf5")
(setf (get ssafy_2::GpsServiceRequest :datatype-) "ssafy_2/GpsServiceRequest")
(setf (get ssafy_2::GpsServiceRequest :definition-)
      "float64 start_latitude
float64 start_longitude
float64 end_latitude
float64 end_longitude
---
bool result
")

(setf (get ssafy_2::GpsServiceResponse :md5sum-) "a521110ed02262d566473f15c18bcdf5")
(setf (get ssafy_2::GpsServiceResponse :datatype-) "ssafy_2/GpsServiceResponse")
(setf (get ssafy_2::GpsServiceResponse :definition-)
      "float64 start_latitude
float64 start_longitude
float64 end_latitude
float64 end_longitude
---
bool result
")



(provide :ssafy_2/GpsService "a521110ed02262d566473f15c18bcdf5")


