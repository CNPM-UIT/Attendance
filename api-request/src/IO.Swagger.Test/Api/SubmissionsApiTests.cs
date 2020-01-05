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
    ///  Class for testing SubmissionsApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class SubmissionsApiTests
    {
        private SubmissionsApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new SubmissionsApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of SubmissionsApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' SubmissionsApi
            //Assert.IsInstanceOfType(typeof(SubmissionsApi), instance, "instance is a SubmissionsApi");
        }

        /// <summary>
        /// Test ApiSubmissionsGet
        /// </summary>
        [Test]
        public void ApiSubmissionsGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.ApiSubmissionsGet();
            //Assert.IsInstanceOf<List<SubmissionDTO>> (response, "response is List<SubmissionDTO>");
        }
        /// <summary>
        /// Test ApiSubmissionsIdDelete
        /// </summary>
        [Test]
        public void ApiSubmissionsIdDeleteTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //var response = instance.ApiSubmissionsIdDelete(id);
            //Assert.IsInstanceOf<SubmissionDTO> (response, "response is SubmissionDTO");
        }
        /// <summary>
        /// Test ApiSubmissionsIdGet
        /// </summary>
        [Test]
        public void ApiSubmissionsIdGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //var response = instance.ApiSubmissionsIdGet(id);
            //Assert.IsInstanceOf<SubmissionDTO> (response, "response is SubmissionDTO");
        }
        /// <summary>
        /// Test ApiSubmissionsIdPut
        /// </summary>
        [Test]
        public void ApiSubmissionsIdPutTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //SubmissionDTO body = null;
            //instance.ApiSubmissionsIdPut(id, body);
            
        }
        /// <summary>
        /// Test ApiSubmissionsPost
        /// </summary>
        [Test]
        public void ApiSubmissionsPostTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //SubmissionDTO body = null;
            //var response = instance.ApiSubmissionsPost(body);
            //Assert.IsInstanceOf<SubmissionDTO> (response, "response is SubmissionDTO");
        }
    }

}