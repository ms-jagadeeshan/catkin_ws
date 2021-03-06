// Generated by gencpp from file robotico/string_msgResponse.msg
// DO NOT EDIT!


#ifndef ROBOTICO_MESSAGE_STRING_MSGRESPONSE_H
#define ROBOTICO_MESSAGE_STRING_MSGRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotico
{
template <class ContainerAllocator>
struct string_msgResponse_
{
  typedef string_msgResponse_<ContainerAllocator> Type;

  string_msgResponse_()
    : out()  {
    }
  string_msgResponse_(const ContainerAllocator& _alloc)
    : out(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _out_type;
  _out_type out;





  typedef boost::shared_ptr< ::robotico::string_msgResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotico::string_msgResponse_<ContainerAllocator> const> ConstPtr;

}; // struct string_msgResponse_

typedef ::robotico::string_msgResponse_<std::allocator<void> > string_msgResponse;

typedef boost::shared_ptr< ::robotico::string_msgResponse > string_msgResponsePtr;
typedef boost::shared_ptr< ::robotico::string_msgResponse const> string_msgResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotico::string_msgResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotico::string_msgResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robotico

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robotico::string_msgResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotico::string_msgResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotico::string_msgResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotico::string_msgResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotico::string_msgResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotico::string_msgResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotico::string_msgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "da0977a72deba269ef1a5e91941513be";
  }

  static const char* value(const ::robotico::string_msgResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xda0977a72deba269ULL;
  static const uint64_t static_value2 = 0xef1a5e91941513beULL;
};

template<class ContainerAllocator>
struct DataType< ::robotico::string_msgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotico/string_msgResponse";
  }

  static const char* value(const ::robotico::string_msgResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotico::string_msgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string out\n\
";
  }

  static const char* value(const ::robotico::string_msgResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotico::string_msgResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.out);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct string_msgResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotico::string_msgResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotico::string_msgResponse_<ContainerAllocator>& v)
  {
    s << indent << "out: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.out);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTICO_MESSAGE_STRING_MSGRESPONSE_H
