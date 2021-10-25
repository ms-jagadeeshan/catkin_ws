// Generated by gencpp from file robotico/string_msg.msg
// DO NOT EDIT!


#ifndef ROBOTICO_MESSAGE_STRING_MSG_H
#define ROBOTICO_MESSAGE_STRING_MSG_H

#include <ros/service_traits.h>


#include <robotico/string_msgRequest.h>
#include <robotico/string_msgResponse.h>


namespace robotico
{

struct string_msg
{

typedef string_msgRequest Request;
typedef string_msgResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct string_msg
} // namespace robotico


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robotico::string_msg > {
  static const char* value()
  {
    return "e21fb7853ad73d6d988d6371d4fed1e2";
  }

  static const char* value(const ::robotico::string_msg&) { return value(); }
};

template<>
struct DataType< ::robotico::string_msg > {
  static const char* value()
  {
    return "robotico/string_msg";
  }

  static const char* value(const ::robotico::string_msg&) { return value(); }
};


// service_traits::MD5Sum< ::robotico::string_msgRequest> should match 
// service_traits::MD5Sum< ::robotico::string_msg > 
template<>
struct MD5Sum< ::robotico::string_msgRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robotico::string_msg >::value();
  }
  static const char* value(const ::robotico::string_msgRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotico::string_msgRequest> should match 
// service_traits::DataType< ::robotico::string_msg > 
template<>
struct DataType< ::robotico::string_msgRequest>
{
  static const char* value()
  {
    return DataType< ::robotico::string_msg >::value();
  }
  static const char* value(const ::robotico::string_msgRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robotico::string_msgResponse> should match 
// service_traits::MD5Sum< ::robotico::string_msg > 
template<>
struct MD5Sum< ::robotico::string_msgResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robotico::string_msg >::value();
  }
  static const char* value(const ::robotico::string_msgResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotico::string_msgResponse> should match 
// service_traits::DataType< ::robotico::string_msg > 
template<>
struct DataType< ::robotico::string_msgResponse>
{
  static const char* value()
  {
    return DataType< ::robotico::string_msg >::value();
  }
  static const char* value(const ::robotico::string_msgResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOTICO_MESSAGE_STRING_MSG_H
