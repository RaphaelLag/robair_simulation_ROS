; Auto-generated. Do not edit!


(cl:in-package robair_simulation-msg)


;//! \htmlinclude collision_event.msg.html

(cl:defclass <collision_event> (roslisp-msg-protocol:ros-message)
  ((collision
    :reader collision
    :initarg :collision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass collision_event (<collision_event>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <collision_event>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'collision_event)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robair_simulation-msg:<collision_event> is deprecated: use robair_simulation-msg:collision_event instead.")))

(cl:ensure-generic-function 'collision-val :lambda-list '(m))
(cl:defmethod collision-val ((m <collision_event>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robair_simulation-msg:collision-val is deprecated.  Use robair_simulation-msg:collision instead.")
  (collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <collision_event>) ostream)
  "Serializes a message object of type '<collision_event>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <collision_event>) istream)
  "Deserializes a message object of type '<collision_event>"
    (cl:setf (cl:slot-value msg 'collision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<collision_event>)))
  "Returns string type for a message object of type '<collision_event>"
  "robair_simulation/collision_event")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'collision_event)))
  "Returns string type for a message object of type 'collision_event"
  "robair_simulation/collision_event")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<collision_event>)))
  "Returns md5sum for a message object of type '<collision_event>"
  "ec9653804a13642f770edbe4a85843b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'collision_event)))
  "Returns md5sum for a message object of type 'collision_event"
  "ec9653804a13642f770edbe4a85843b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<collision_event>)))
  "Returns full string definition for message of type '<collision_event>"
  (cl:format cl:nil "#0 nothing~%#1 collision detected~%bool collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'collision_event)))
  "Returns full string definition for message of type 'collision_event"
  (cl:format cl:nil "#0 nothing~%#1 collision detected~%bool collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <collision_event>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <collision_event>))
  "Converts a ROS message object to a list"
  (cl:list 'collision_event
    (cl:cons ':collision (collision msg))
))
