// Generated by gencpp from file robair_simulation/collision_event.msg
// DO NOT EDIT!


#ifndef ROBAIR_SIMULATION_MESSAGE_COLLISION_EVENT_H
#define ROBAIR_SIMULATION_MESSAGE_COLLISION_EVENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robair_simulation
{
template <class ContainerAllocator>
struct collision_event_
{
  typedef collision_event_<ContainerAllocator> Type;

  collision_event_()
    : collision(false)  {
    }
  collision_event_(const ContainerAllocator& _alloc)
    : collision(false)  {
    }



   typedef uint8_t _collision_type;
  _collision_type collision;




  typedef boost::shared_ptr< ::robair_simulation::collision_event_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robair_simulation::collision_event_<ContainerAllocator> const> ConstPtr;

}; // struct collision_event_

typedef ::robair_simulation::collision_event_<std::allocator<void> > collision_event;

typedef boost::shared_ptr< ::robair_simulation::collision_event > collision_eventPtr;
typedef boost::shared_ptr< ::robair_simulation::collision_event const> collision_eventConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robair_simulation::collision_event_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robair_simulation::collision_event_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robair_simulation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'robair_simulation': ['/home/laguerre/Documents/ENSIMAG/S4/fablab/robair/robair_simulation_ROS/catkin_ws/src/robair_simulation/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robair_simulation::collision_event_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robair_simulation::collision_event_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robair_simulation::collision_event_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robair_simulation::collision_event_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robair_simulation::collision_event_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robair_simulation::collision_event_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robair_simulation::collision_event_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ec9653804a13642f770edbe4a85843b2";
  }

  static const char* value(const ::robair_simulation::collision_event_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xec9653804a13642fULL;
  static const uint64_t static_value2 = 0x770edbe4a85843b2ULL;
};

template<class ContainerAllocator>
struct DataType< ::robair_simulation::collision_event_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robair_simulation/collision_event";
  }

  static const char* value(const ::robair_simulation::collision_event_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robair_simulation::collision_event_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#0 nothing\n\
#1 collision detected\n\
bool collision\n\
";
  }

  static const char* value(const ::robair_simulation::collision_event_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robair_simulation::collision_event_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.collision);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct collision_event_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robair_simulation::collision_event_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robair_simulation::collision_event_<ContainerAllocator>& v)
  {
    s << indent << "collision: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.collision);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBAIR_SIMULATION_MESSAGE_COLLISION_EVENT_H
