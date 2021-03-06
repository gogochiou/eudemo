// Generated by gencpp from file main2021/cup_cameraResponse.msg
// DO NOT EDIT!


#ifndef MAIN2021_MESSAGE_CUP_CAMERARESPONSE_H
#define MAIN2021_MESSAGE_CUP_CAMERARESPONSE_H


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
struct cup_cameraResponse_
{
  typedef cup_cameraResponse_<ContainerAllocator> Type;

  cup_cameraResponse_()
    : color()
    , cup_pos()  {
    }
  cup_cameraResponse_(const ContainerAllocator& _alloc)
    : color(_alloc)
    , cup_pos(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _color_type;
  _color_type color;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _cup_pos_type;
  _cup_pos_type cup_pos;





  typedef boost::shared_ptr< ::main2021::cup_cameraResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::main2021::cup_cameraResponse_<ContainerAllocator> const> ConstPtr;

}; // struct cup_cameraResponse_

typedef ::main2021::cup_cameraResponse_<std::allocator<void> > cup_cameraResponse;

typedef boost::shared_ptr< ::main2021::cup_cameraResponse > cup_cameraResponsePtr;
typedef boost::shared_ptr< ::main2021::cup_cameraResponse const> cup_cameraResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::main2021::cup_cameraResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::main2021::cup_cameraResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::main2021::cup_cameraResponse_<ContainerAllocator1> & lhs, const ::main2021::cup_cameraResponse_<ContainerAllocator2> & rhs)
{
  return lhs.color == rhs.color &&
    lhs.cup_pos == rhs.cup_pos;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::main2021::cup_cameraResponse_<ContainerAllocator1> & lhs, const ::main2021::cup_cameraResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace main2021

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::main2021::cup_cameraResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::main2021::cup_cameraResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::main2021::cup_cameraResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::main2021::cup_cameraResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::main2021::cup_cameraResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::main2021::cup_cameraResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::main2021::cup_cameraResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7122df95499befbf2cc9e57c6f43f6c9";
  }

  static const char* value(const ::main2021::cup_cameraResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7122df95499befbfULL;
  static const uint64_t static_value2 = 0x2cc9e57c6f43f6c9ULL;
};

template<class ContainerAllocator>
struct DataType< ::main2021::cup_cameraResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "main2021/cup_cameraResponse";
  }

  static const char* value(const ::main2021::cup_cameraResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::main2021::cup_cameraResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[] color\n"
"float32[] cup_pos\n"
"\n"
"\n"
"\n"
;
  }

  static const char* value(const ::main2021::cup_cameraResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::main2021::cup_cameraResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.color);
      stream.next(m.cup_pos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cup_cameraResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::main2021::cup_cameraResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::main2021::cup_cameraResponse_<ContainerAllocator>& v)
  {
    s << indent << "color[]" << std::endl;
    for (size_t i = 0; i < v.color.size(); ++i)
    {
      s << indent << "  color[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.color[i]);
    }
    s << indent << "cup_pos[]" << std::endl;
    for (size_t i = 0; i < v.cup_pos.size(); ++i)
    {
      s << indent << "  cup_pos[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.cup_pos[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAIN2021_MESSAGE_CUP_CAMERARESPONSE_H
