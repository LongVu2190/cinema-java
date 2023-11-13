<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
  String root = request.getContextPath();

  // delete ".jsp"
  String URI = request.getRequestURI();
  URI = URI.substring(0, URI.length() - 4);
%>

<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="./tailwindcss/tailwindcss.js"></script>
    <script src="./tailwindcss/tailwindcss-with-forms.js"></script>
    <script src="./tailwindcss/tailwindcss-with-typography.js"></script>
    <script src="./tailwindcss/tailwindcss-with-aspect-ratio.js"></script>
    <script src="./tailwindcss/tailwindcss-with-line-clamp.js"></script>
    <script src="./tailwindcss/tailwindcss-with-all-plugins.js"></script>
  </head>

  <body>
    <!-- component header -->
    <jsp:include page="./Component/header.jsp">
      <jsp:param name="activeTab" value="home"/>
    </jsp:include>

    <!--content-->
    <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
      <a href="#" class="flex items-center mb-6 text-2xl font-semibold text-gray-900">
        <img class="w-8 h-8 mr-2" src="https://flowbite.s3.amazonaws.com/blocks/marketing-ui/logo.svg"
             alt="logo">
        CINEMA
      </a>
      <div
        class="w-full bg-white rounded-lg shadow md:mt-0 sm:max-w-md xl:p-0">
        <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
          <h1
            class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl">
            Sign in to your account
          </h1>
          <form class="space-y-4 md:space-y-6" action="#">
            <div>
              <label for="email"
                     class="block mb-2 text-sm font-medium text-gray-900">Your
                email</label>
              <input type="email" name="email" id="email"
                     class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                     placeholder="name@company.com" required="">
            </div>
            <div>
              <label for="password"
                     class="block mb-2 text-sm font-medium text-gray-900">Password</label>
              <input type="password" name="password" id="password" placeholder="????????"
                     class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                     required="">
            </div>
            <div class="flex items-center justify-between">
              <div class="flex items-start">
                <div class="flex items-center h-5">
                  <input id="remember" aria-describedby="remember" type="checkbox"
                         class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-primary-300"
                         required="">
                </div>
                <div class="ml-3 text-sm">
                  <label for="remember" class="text-gray-500">Remember
                    me</label>
                </div>
              </div>
              <a href="#"
                 class="text-sm font-medium text-primary-600 hover:underline">Forgot
                password?</a>
            </div>

            <button type="submit"
                    class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-4 lg:px-5 py-2 lg:py-2.5 mr-2">Sign
              in</button>

            <p class="text-sm font-light text-gray-500">
              Don?t have an account yet? <a href="#" data-modal-target="default-modal"
                                            data-modal-toggle="default-modal"
                                            class="font-medium text-primary-600 hover:underline">Sign
                up</a>
            </p>
          </form>
        </div>
      </div>
    </div>

    <!-- Main modal -->
    <div id="default-modal" tabindex="-1" aria-hidden="true"
         class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full">
      <div class="relative w-full max-w-md max-h-full">
        <!-- Modal content -->
        <div class="relative bg-white rounded-lg shadow">
          <button type="button"
                  class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ml-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                  data-modal-hide="default-modal">
            <svg class="w-3 h-3" class="close" data-dismiss="modal" aria-hidden="true"
                 xmlns="http://www.w3.org/2000/svg" fill="none"
                 viewBox="0 0 14 14">
            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
            </svg>
            <span class="sr-only">Close modal</span>
          </button>
          <div class="px-6 py-6 lg:px-8">
            <h3 class="mb-4 text-xl font-medium text-gray-900">Sign up a new account</h3>
            <form class="space-y-6" action="#">
              <div>
                <label for="text"
                       class="block mb-2 text-sm font-medium text-gray-900">Fullname</label>
                <input type="text" name="text" id="fullname"
                       class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                       placeholder="Trinh Tran Phuong Tuan" required>
              </div>
              <div>
                <label for="text"
                       class="block mb-2 text-sm font-medium text-gray-900">Username</label>
                <input type="text" name="text" id="username"
                       class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                       placeholder="jackj97" required>
              </div>
              <div>
                <label for="email"
                       class="block mb-2 text-sm font-medium text-gray-900">Email</label>
                <input type="email" name="email" id="email"
                       class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                       placeholder="jack@j97.com" required>
              </div>
              <div>
                <label for="text"
                       class="block mb-2 text-sm font-medium text-gray-900">Phone
                  number</label>
                <input type="text" name="text" id="phonenumber"
                       class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                       placeholder="0999999999" required>
              </div>
              <div>
                <label for="password"
                       class="block mb-2 text-sm font-medium text-gray-900">Password</label>
                <input type="password" name="password" id="password" placeholder="????????"
                       class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                       required>
              </div>
              <div class="flex justify-between">
                <div class="flex items-start">
                  <div class="flex items-center h-5">
                    <input id="remember" type="checkbox" value=""
                           class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300"
                           required>
                  </div>
                  <label for="remember"
                         class="ml-2 text-sm font-medium text-gray-900">Remember
                    me</label>
                </div>
              </div>
              <button type="submit" href="/index.html"
                      class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Sign
                up</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.min.js"></script>

  </div>
</body>

</html>