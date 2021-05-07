// Generated by gencpp from file main2021/cupRequest.msg
// DO NOT EDIT!


#ifndef MAIN2021_MESSAGE_CUPREQUEST_H
#define MAIN2021_MESSAGE_CUPREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace main2021
{
template <class ContainerAllocator>
struct cupRequest_
{
  typedef cupRequest_<ContainerAllocator> Type;

  cupRequest_()
    : ask_cup(0)  {
    }
  cupRequest_(const ContainerAllocator& _alloc)
    : ask_cup(0)  {
  (void)_alloc;
    }



   typedef int32_t _ask_cup_type;
  _ask_cup_type ask_cup;





  typedef boost::shared_ptr< ::main2021::cupRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::main2021::cupRequest_<ContainerAllocator> const> ConstPtr;

}; // struct cupRequest_

typedef ::main2021::cupRequest_<std::allocator<void> > cupRequest;

typedef boost::shared_ptr< ::main2021::cupRequest > cupRequestPtr;
typedef boost::shared_ptr< ::main2021::cupRequest const> cupRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::main2021::cupRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::main2021::cupRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::main2021::cupRequest_<ContainerAllocator1> & lhs, const ::main2021::cupRequest_<ContainerAllocator2> & rhs)
{
  return lhs.ask_cup == rhs.ask_cup;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::main2021::cupRequest_<ContainerAllocator1> & lhs, const ::main2021::cupRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace main2021

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::main2021::cupRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::main2021::cupRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::main2021::cupRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::main2021::cupRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::main2021::cupRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::main2021::cupRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::main2021::cupRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "25ae256185f7a2b5556316fe4144f4f8";
  }

  static const char* value(const ::main2021::cupRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x25ae256185f7a2b5ULL;
  static const uint64_t static_value2 = 0x556316fe4144f4f8ULL;
};

template<class ContainerAllocator>
struct DataType< ::main2021::cupRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "main2021/cupRequest";
  }

  static const char* value(const ::main2021::cupRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::main2021::cupRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 ask_cup\n"
;
  }

  static const char* value(const ::main2021::cupRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::main2021::cupRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ask_cup);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cupRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::main2021::cupRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::main2021::cupRequest_<ContainerAllocator>& v)
  {
    s << indent << "ask_cup: ";
    Printer<int32_t>::stream(s, indent + "  ", v.ask_cup);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAIN2021_MESSAGE_CUPREQUEST_H