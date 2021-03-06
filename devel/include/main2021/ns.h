// Generated by gencpp from file main2021/ns.msg
// DO NOT EDIT!


#ifndef MAIN2021_MESSAGE_NS_H
#define MAIN2021_MESSAGE_NS_H

#include <ros/service_traits.h>


#include <main2021/nsRequest.h>
#include <main2021/nsResponse.h>


namespace main2021
{

struct ns
{

typedef nsRequest Request;
typedef nsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ns
} // namespace main2021


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::main2021::ns > {
  static const char* value()
  {
    return "6db1d56b21aeaaf74af61c1e66674fb6";
  }

  static const char* value(const ::main2021::ns&) { return value(); }
};

template<>
struct DataType< ::main2021::ns > {
  static const char* value()
  {
    return "main2021/ns";
  }

  static const char* value(const ::main2021::ns&) { return value(); }
};


// service_traits::MD5Sum< ::main2021::nsRequest> should match
// service_traits::MD5Sum< ::main2021::ns >
template<>
struct MD5Sum< ::main2021::nsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::main2021::ns >::value();
  }
  static const char* value(const ::main2021::nsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::main2021::nsRequest> should match
// service_traits::DataType< ::main2021::ns >
template<>
struct DataType< ::main2021::nsRequest>
{
  static const char* value()
  {
    return DataType< ::main2021::ns >::value();
  }
  static const char* value(const ::main2021::nsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::main2021::nsResponse> should match
// service_traits::MD5Sum< ::main2021::ns >
template<>
struct MD5Sum< ::main2021::nsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::main2021::ns >::value();
  }
  static const char* value(const ::main2021::nsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::main2021::nsResponse> should match
// service_traits::DataType< ::main2021::ns >
template<>
struct DataType< ::main2021::nsResponse>
{
  static const char* value()
  {
    return DataType< ::main2021::ns >::value();
  }
  static const char* value(const ::main2021::nsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MAIN2021_MESSAGE_NS_H
