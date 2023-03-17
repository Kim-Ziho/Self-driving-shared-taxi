;; Auto-generated. Do not edit!


(when (boundp 'ssafy_2::mvp)
  (if (not (find-package "SSAFY_2"))
    (make-package "SSAFY_2"))
  (shadow 'mvp (find-package "SSAFY_2")))
(unless (find-package "SSAFY_2::MVP")
  (make-package "SSAFY_2::MVP"))

(in-package "ROS")
;;//! \htmlinclude mvp.msg.html


(defclass ssafy_2::mvp
  :super ros::object
  :slots (_longitudei _latitudei _longitudeg _latitudeg ))

(defmethod ssafy_2::mvp
  (:init
   (&key
    ((:longitudei __longitudei) 0.0)
    ((:latitudei __latitudei) 0.0)
    ((:longitudeg __longitudeg) 0.0)
    ((:latitudeg __latitudeg) 0.0)
    )
   (send-super :init)
   (setq _longitudei (float __longitudei))
   (setq _latitudei (float __latitudei))
   (setq _longitudeg (float __longitudeg))
   (setq _latitudeg (float __latitudeg))
   self)
  (:longitudei
   (&optional __longitudei)
   (if __longitudei (setq _longitudei __longitudei)) _longitudei)
  (:latitudei
   (&optional __latitudei)
   (if __latitudei (setq _latitudei __latitudei)) _latitudei)
  (:longitudeg
   (&optional __longitudeg)
   (if __longitudeg (setq _longitudeg __longitudeg)) _longitudeg)
  (:latitudeg
   (&optional __latitudeg)
   (if __latitudeg (setq _latitudeg __latitudeg)) _latitudeg)
  (:serialization-length
   ()
   (+
    ;; float64 _longitudei
    8
    ;; float64 _latitudei
    8
    ;; float64 _longitudeg
    8
    ;; float64 _latitudeg
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _longitudei
       (sys::poke _longitudei (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitudei
       (sys::poke _latitudei (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitudeg
       (sys::poke _longitudeg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitudeg
       (sys::poke _latitudeg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _longitudei
     (setq _longitudei (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitudei
     (setq _latitudei (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitudeg
     (setq _longitudeg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitudeg
     (setq _latitudeg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ssafy_2::mvp :md5sum-) "be83d3a65597cc0a4c5a9ccca46da4e1")
(setf (get ssafy_2::mvp :datatype-) "ssafy_2/mvp")
(setf (get ssafy_2::mvp :definition-)
      "float64 longitudei
float64 latitudei
float64 longitudeg
float64 latitudeg
")



(provide :ssafy_2/mvp "be83d3a65597cc0a4c5a9ccca46da4e1")


