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
    ///  Class for testing CourseLecturersApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class CourseLecturersApiTests
    {
        private CourseLecturersApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new CourseLecturersApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of CourseLecturersApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' CourseLecturersApi
            //Assert.IsInstanceOfType(typeof(CourseLecturersApi), instance, "instance is a CourseLecturersApi");
        }

        /// <summary>
        /// Test ApiCourseLecturersGet
        /// </summary>
        [Test]
        public void ApiCourseLecturersGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.ApiCourseLecturersGet();
            //Assert.IsInstanceOf<List<CourseLecturerDTO>> (response, "response is List<CourseLecturerDTO>");
        }
        /// <summary>
        /// Test ApiCourseLecturersIdDelete
        /// </summary>
        [Test]
        public void ApiCourseLecturersIdDeleteTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //var response = instance.ApiCourseLecturersIdDelete(id);
            //Assert.IsInstanceOf<CourseLecturerDTO> (response, "response is CourseLecturerDTO");
        }
        /// <summary>
        /// Test ApiCourseLecturersIdGet
        /// </summary>
        [Test]
        public void ApiCourseLecturersIdGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //var response = instance.ApiCourseLecturersIdGet(id);
            //Assert.IsInstanceOf<CourseLecturerDTO> (response, "response is CourseLecturerDTO");
        }
        /// <summary>
        /// Test ApiCourseLecturersIdPut
        /// </summary>
        [Test]
        public void ApiCourseLecturersIdPutTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //CourseLecturerDTO body = null;
            //instance.ApiCourseLecturersIdPut(id, body);
            
        }
        /// <summary>
        /// Test ApiCourseLecturersPost
        /// </summary>
        [Test]
        public void ApiCourseLecturersPostTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //CourseLecturerDTO body = null;
            //var response = instance.ApiCourseLecturersPost(body);
            //Assert.IsInstanceOf<CourseLecturerDTO> (response, "response is CourseLecturerDTO");
        }
    }

}
