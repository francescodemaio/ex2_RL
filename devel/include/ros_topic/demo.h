// Generated by gencpp from file ros_topic/demo.msg
// DO NOT EDIT!


#ifndef ROS_TOPIC_MESSAGE_DEMO_H
#define ROS_TOPIC_MESSAGE_DEMO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_topic
{
template <class ContainerAllocator>
struct demo_
{
  typedef demo_<ContainerAllocator> Type;

  demo_()
    : valore(0.0)
    , periodo(0.0)
    , ampiezza(0.0)  {
    }
  demo_(const ContainerAllocator& _alloc)
    : valore(0.0)
    , periodo(0.0)
    , ampiezza(0.0)  {
  (void)_alloc;
    }



   typedef double _valore_type;
  _valore_type valore;

   typedef double _periodo_type;
  _periodo_type periodo;

   typedef double _ampiezza_type;
  _ampiezza_type ampiezza;





  typedef boost::shared_ptr< ::ros_topic::demo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_topic::demo_<ContainerAllocator> const> ConstPtr;

}; // struct demo_

typedef ::ros_topic::demo_<std::allocator<void> > demo;

typedef boost::shared_ptr< ::ros_topic::demo > demoPtr;
typedef boost::shared_ptr< ::ros_topic::demo const> demoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_topic::demo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_topic::demo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_topic::demo_<ContainerAllocator1> & lhs, const ::ros_topic::demo_<ContainerAllocator2> & rhs)
{
  return lhs.valore == rhs.valore &&
    lhs.periodo == rhs.periodo &&
    lhs.ampiezza == rhs.ampiezza;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_topic::demo_<ContainerAllocator1> & lhs, const ::ros_topic::demo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_topic

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_topic::demo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_topic::demo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_topic::demo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_topic::demo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_topic::demo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_topic::demo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_topic::demo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "090b6990903cf4047b51d53a5fb1176e";
  }

  static const char* value(const ::ros_topic::demo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x090b6990903cf404ULL;
  static const uint64_t static_value2 = 0x7b51d53a5fb1176eULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_topic::demo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_topic/demo";
  }

  static const char* value(const ::ros_topic::demo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_topic::demo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 valore\n"
"float64 periodo\n"
"float64 ampiezza\n"
;
  }

  static const char* value(const ::ros_topic::demo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_topic::demo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.valore);
      stream.next(m.periodo);
      stream.next(m.ampiezza);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct demo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_topic::demo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_topic::demo_<ContainerAllocator>& v)
  {
    s << indent << "valore: ";
    Printer<double>::stream(s, indent + "  ", v.valore);
    s << indent << "periodo: ";
    Printer<double>::stream(s, indent + "  ", v.periodo);
    s << indent << "ampiezza: ";
    Printer<double>::stream(s, indent + "  ", v.ampiezza);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_TOPIC_MESSAGE_DEMO_H
