;; Auto-generated. Do not edit!


(when (boundp 'robotico::string_msg)
  (if (not (find-package "ROBOTICO"))
    (make-package "ROBOTICO"))
  (shadow 'string_msg (find-package "ROBOTICO")))
(unless (find-package "ROBOTICO::STRING_MSG")
  (make-package "ROBOTICO::STRING_MSG"))
(unless (find-package "ROBOTICO::STRING_MSGREQUEST")
  (make-package "ROBOTICO::STRING_MSGREQUEST"))
(unless (find-package "ROBOTICO::STRING_MSGRESPONSE")
  (make-package "ROBOTICO::STRING_MSGRESPONSE"))

(in-package "ROS")





(defclass robotico::string_msgRequest
  :super ros::object
  :slots (_in ))

(defmethod robotico::string_msgRequest
  (:init
   (&key
    ((:in __in) "")
    )
   (send-super :init)
   (setq _in (string __in))
   self)
  (:in
   (&optional __in)
   (if __in (setq _in __in)) _in)
  (:serialization-length
   ()
   (+
    ;; string _in
    4 (length _in)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _in
       (write-long (length _in) s) (princ _in s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _in
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _in (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotico::string_msgResponse
  :super ros::object
  :slots (_out ))

(defmethod robotico::string_msgResponse
  (:init
   (&key
    ((:out __out) "")
    )
   (send-super :init)
   (setq _out (string __out))
   self)
  (:out
   (&optional __out)
   (if __out (setq _out __out)) _out)
  (:serialization-length
   ()
   (+
    ;; string _out
    4 (length _out)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _out
       (write-long (length _out) s) (princ _out s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _out
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _out (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotico::string_msg
  :super ros::object
  :slots ())

(setf (get robotico::string_msg :md5sum-) "e21fb7853ad73d6d988d6371d4fed1e2")
(setf (get robotico::string_msg :datatype-) "robotico/string_msg")
(setf (get robotico::string_msg :request) robotico::string_msgRequest)
(setf (get robotico::string_msg :response) robotico::string_msgResponse)

(defmethod robotico::string_msgRequest
  (:response () (instance robotico::string_msgResponse :init)))

(setf (get robotico::string_msgRequest :md5sum-) "e21fb7853ad73d6d988d6371d4fed1e2")
(setf (get robotico::string_msgRequest :datatype-) "robotico/string_msgRequest")
(setf (get robotico::string_msgRequest :definition-)
      "string in
---
string out
")

(setf (get robotico::string_msgResponse :md5sum-) "e21fb7853ad73d6d988d6371d4fed1e2")
(setf (get robotico::string_msgResponse :datatype-) "robotico/string_msgResponse")
(setf (get robotico::string_msgResponse :definition-)
      "string in
---
string out
")



(provide :robotico/string_msg "e21fb7853ad73d6d988d6371d4fed1e2")


