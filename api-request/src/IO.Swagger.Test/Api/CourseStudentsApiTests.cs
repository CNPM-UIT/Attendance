/* 
 * Smart Class API
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: v1
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */
using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using IO.Swagger.Client;
using IO.Swagger.Api;
using IO.Swagger.Model;

namespace IO.Swagger.Test
{
    /// <summary>
    ///  Class for testing CourseStudentsApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class CourseStudentsApiTests
    {
        private CourseStudentsApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new CourseStudentsApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of CourseStudentsApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' CourseStudentsApi
            //Assert.IsInstanceOfType(typeof(CourseStudentsApi), instance, "instance is a CourseStudentsApi");
        }

        /// <summary>
        /// Test ApiCourseStudentsGet
        /// </summary>
        [Test]
        public void ApiCourseStudentsGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.ApiCourseStudentsGet();
            //Assert.IsInstanceOf<List<CourseStudentDTO>> (response, "response is List<CourseStudentDTO>");
        }
        /// <summary>
        /// Test ApiCourseStudentsIdDelete
        /// </summary>
        [Test]
        public void ApiCourseStudentsIdDeleteTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //var response = instance.ApiCourseStudentsIdDelete(id);
            //Assert.IsInstanceOf<CourseStudentDTO> (response, "response is CourseStudentDTO");
        }
        /// <summary>
        /// Test ApiCourseStudentsIdGet
        /// </summary>
        [Test]
        public void ApiCourseStudentsIdGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //var response = instance.ApiCourseStudentsIdGet(id);
            //Assert.IsInstanceOf<CourseStudentDTO> (response, "response is CourseStudentDTO");
        }
        /// <summary>
        /// Test ApiCourseStudentsIdPut
        /// </summary>
        [Test]
        public void ApiCourseStudentsIdPutTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //CourseStudentDTO body = null;
            //instance.ApiCourseStudentsIdPut(id, body);
            
        }
        /// <summary>
        /// Test ApiCourseStudentsPost
        /// </summary>
        [Test]
        public void ApiCourseStudentsPostTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //CourseStudentDTO body = null;
            //var response = instance.ApiCourseStudentsPost(body);
            //Assert.IsInstanceOf<CourseStudentDTO> (response, "response is CourseStudentDTO");
        }
    }

}
