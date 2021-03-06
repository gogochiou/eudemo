// Generated by gencpp from file main2021/position.msg
// DO NOT EDIT!


#ifndef MAIN2021_MESSAGE_POSITION_H
#define MAIN2021_MESSAGE_POSITION_H


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
struct position_
{
  typedef position_<ContainerAllocator> Type;

  position_()
    : my_x(0.0)
    , my_y(0.0)
    , my_z(0.0)
    , my_degreex(0.0)
    , my_degreey(0.0)
    , my_degreez(0.0)
    , my_degreew(0.0)  {
    }
  position_(const ContainerAllocator& _alloc)
    : my_x(0.0)
    , my_y(0.0)
    , my_z(0.0)
    , my_degreex(0.0)
    , my_degreey(0.0)
    , my_degreez(0.0)
    , my_degreew(0.0)  {
  (void)_alloc;
    }



   typedef float _my_x_type;
  _my_x_type my_x;

   typedef float _my_y_type;
  _my_y_type my_y;

   typedef float _my_z_type;
  _my_z_type my_z;

   typedef float _my_degreex_type;
  _my_degreex_type my_degreex;

   typedef float _my_degreey_type;
  _my_degreey_type my_degreey;

   typedef float _my_degreez_type;
  _my_degreez_type my_degreez;

   typedef float _my_degreew_type;
  _my_degreew_type my_degreew;





  typedef boost::shared_ptr< ::main2021::position_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::main2021::position_<ContainerAllocator> const> ConstPtr;

}; // struct position_

typedef ::main2021::position_<std::allocator<void> > position;

typedef boost::shared_ptr< ::main2021::position > positionPtr;
typedef boost::shared_ptr< ::main2021::position const> positionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::main2021::position_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::main2021::position_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::main2021::position_<ContainerAllocator1> & lhs, const ::main2021::position_<ContainerAllocator2> & rhs)
{
  return lhs.my_x == rhs.my_x &&
    lhs.my_y == rhs.my_y &&
    lhs.my_z == rhs.my_z &&
    lhs.my_degreex == rhs.my_degreex &&
    lhs.my_degreey == rhs.my_degreey &&
    lhs.my_degreez == rhs.my_degreez &&
    lhs.my_degreew == rhs.my_degreew;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::main2021::position_<ContainerAllocator1> & lhs, const ::main2021::position_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace main2021

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::main2021::position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::main2021::position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::main2021::position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::main2021::position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::main2021::position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::main2021::position_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::main2021::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "04836b89de39e862e20e94175e8fc855";
  }

  static const char* value(const ::main2021::position_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x04836b89de39e862ULL;
  static const uint64_t static_value2 = 0xe20e94175e8fc855ULL;
};

template<class ContainerAllocator>
struct DataType< ::main2021::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "main2021/position";
  }

  static const char* value(const ::main2021::position_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::main2021::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 my_x\n"
"float32 my_y\n"
"float32 my_z\n"
"float32 my_degreex\n"
"float32 my_degreey\n"
"float32 my_degreez\n"
"float32 my_degreew\n"
;
  }

  static const char* value(const ::main2021::position_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::main2021::position_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.my_x);
      stream.next(m.my_y);
      stream.next(m.my_z);
      stream.next(m.my_degreex);
      stream.next(m.my_degreey);
      stream.next(m.my_degreez);
      stream.next(m.my_degreew);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct position_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::main2021::position_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::main2021::position_<ContainerAllocator>& v)
  {
    s << indent << "my_x: ";
    Printer<float>::stream(s, indent + "  ", v.my_x);
    s << indent << "my_y: ";
    Printer<float>::stream(s, indent + "  ", v.my_y);
    s << indent << "my_z: ";
    Printer<float>::stream(s, indent + "  ", v.my_z);
    s << indent << "my_degreex: ";
    Printer<float>::stream(s, indent + "  ", v.my_degreex);
    s << indent << "my_degreey: ";
    Printer<float>::stream(s, indent + "  ", v.my_degreey);
    s << indent << "my_degreez: ";
    Printer<float>::stream(s, indent + "  ", v.my_degreez);
    s << indent << "my_degreew: ";
    Printer<float>::stream(s, indent + "  ", v.my_degreew);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAIN2021_MESSAGE_POSITION_H
