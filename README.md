# ProductOnline Backend for Frontend
Backend for frontend(BFF) is a service design pattern that provides the core idea to create separate back-end services for specific front-end applications. This pattern allows you to have separate back-end service layers depending on the user experience you expect to have in the front-end application. The BFF design pattern has its own advantages and disadvantages. The usage of the pattern depends on your use case and requirements. For more information on the BFF design pattern, see

## Some interesting facts referances.
1. https://www.youtube.com/watch?v=XqQJ6-l26QM
2. https://www.dotconferences.com/2020/02/tim-condon-bffs-for-swift
3. https://blog.bitsrc.io/bff-pattern-backend-for-frontend-an-introduction-e4fa965128bf
4. https://samnewman.io/patterns/architectural/bff/
5. https://www.thoughtworks.com/insights/blog/bff-soundcloud
6. https://www.raywenderlich.com/1030255-kitura-and-the-bff-pattern
7. Podcast : https://softwareengineeringdaily.com/2016/02/04/moving-to-microservices-at-soundcloud-with-lukasz-plotnicki/
8. https://blog.bitsrc.io/sharing-types-between-backend-and-frontend-with-the-bff-pattern-553872842463
9. https://dev.to/bulsyusuf/how-to-use-the-backend-for-frontend-pattern-in-your-mobile-app-architecture-1fhi
10. https://akfpartners.com/growth-blog/backend-for-frontend

## What can vapor do
  - RESTful APIs
  - Web apps
  - real-time application

## Prerequisites Steps
1. If command line tool is not install in your machine, Please triggered below command.
   - xcode-select --install
2. Install Homebrew if it's not in your machine, Please follow below link.
   - https://brew.sh/
3. Please setup Vapor
   - brew install vapor

## Clone Repo.

- Wait for dependecies to resolve.

- Go to root folder & run swift run. This should start a server and show something like below in console.

- [ NOTICE ] Server starting on http://127.0.0.1:8080
- Note: Now your BaseURL is http://127.0.0.1:8080/api

## In this BFF I have created some endpoint.
- Base URL: http://127.0.0.1:8080/api/
- Find All Products: http://127.0.0.1:8080/api/products
- Find Specific Product: http://127.0.0.1:8080/api/productDetail/5
- Error Handling When product id is not found: http://127.0.0.1:8080/api/productDetail/31

## Demo
  ![EndPointsExample](https://user-images.githubusercontent.com/1617897/168218277-08e2bfe1-ba0a-45cf-a80c-09102212fc46.gif)

## High Level Design
  <img width="1120" alt="HLD" src="https://user-images.githubusercontent.com/1617897/168224117-9cb0843a-7b7b-492c-ba12-b251b31e5f34.png">
