;; Auto-generated. Do not edit!


(when (boundp 'ros_topic::demo)
  (if (not (find-package "ROS_TOPIC"))
    (make-package "ROS_TOPIC"))
  (shadow 'demo (find-package "ROS_TOPIC")))
(unless (find-package "ROS_TOPIC::DEMO")
  (make-package "ROS_TOPIC::DEMO"))

(in-package "ROS")
;;//! \htmlinclude demo.msg.html


(defclass ros_topic::demo
  :super ros::object
  :slots (_valore _periodo _ampiezza ))

(defmethod ros_topic::demo
  (:init
   (&key
    ((:valore __valore) 0.0)
    ((:periodo __periodo) 0.0)
    ((:ampiezza __ampiezza) 0.0)
    )
   (send-super :init)
   (setq _valore (float __valore))
   (setq _periodo (float __periodo))
   (setq _ampiezza (float __ampiezza))
   self)
  (:valore
   (&optional __valore)
   (if __valore (setq _valore __valore)) _valore)
  (:periodo
   (&optional __periodo)
   (if __periodo (setq _periodo __periodo)) _periodo)
  (:ampiezza
   (&optional __ampiezza)
   (if __ampiezza (setq _ampiezza __ampiezza)) _ampiezza)
  (:serialization-length
   ()
   (+
    ;; float64 _valore
    8
    ;; float64 _periodo
    8
    ;; float64 _ampiezza
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _valore
       (sys::poke _valore (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _periodo
       (sys::poke _periodo (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ampiezza
       (sys::poke _ampiezza (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _valore
     (setq _valore (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _periodo
     (setq _periodo (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ampiezza
     (setq _ampiezza (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_topic::demo :md5sum-) "090b6990903cf4047b51d53a5fb1176e")
(setf (get ros_topic::demo :datatype-) "ros_topic/demo")
(setf (get ros_topic::demo :definition-)
      "float64 valore
float64 periodo
float64 ampiezza

")



(provide :ros_topic/demo "090b6990903cf4047b51d53a5fb1176e")


