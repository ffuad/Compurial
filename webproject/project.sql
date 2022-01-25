-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 08:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `serial` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Profession` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`serial`, `username`, `password`, `Email`, `Name`, `Profession`) VALUES
(1, 'thfuad', 'thfuad', 'thfuad@gmail.com', 'Tahmid Hasan Fuad', 'Student, KUET');

-- --------------------------------------------------------

--
-- Table structure for table `content_info`
--

CREATE TABLE `content_info` (
  `serial` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `content_name` varchar(255) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content_info`
--

INSERT INTO `content_info` (`serial`, `course_name`, `content_name`, `content`) VALUES
(4, 'ml', 'Basic Concepts', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n</head>\r\n<body>\r\n    <h3>\r\n        What is machine learning?\r\n    </h3>\r\n    <p>\r\n        Machine learning is a branch of artificial intelligence (AI) and computer science which focuses on the use of data and algorithms to imitate the way that humans learn, gradually improving its accuracy.\r\n\r\n        IBM has a rich history with machine learning. One of its own, Arthur Samuel, is credited for coining the term, “machine learning” with his research (PDF, 481 KB) (link resides outside IBM) around the game of checkers. Robert Nealey, the self-proclaimed checkers master, played the game on an IBM 7094 computer in 1962, and he lost to the computer. Compared to what can be done today, this feat almost seems trivial, but it’s considered a major milestone within the field of artificial intelligence. Over the next couple of decades, the technological developments around storage and processing power will enable some innovative products that we know and love today, such as Netflix’s recommendation engine or self-driving cars.\r\n\r\n        Machine learning is an important component of the growing field of data science. Through the use of statistical methods, algorithms are trained to make classifications or predictions, uncovering key insights within data mining projects. These insights subsequently drive decision making within applications and businesses, ideally impacting key growth metrics. As big data continues to expand and grow, the market demand for data scientists will increase, requiring them to assist in the identification of the most relevant business questions and subsequently the data to answer them.\r\n    </p>\r\n</body>\r\n</html>'),
(6, 'ml', 'ML vs. DL vs. NN', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n</head>\r\n<body>\r\n    <h3>\r\n        Machine Learning vs. Deep Learning vs. Neural Networks\r\n    </h3>\r\n    <p>\r\nSince deep learning and machine learning tend to be used interchangeably, it’s worth noting the nuances between the two. Machine learning, deep learning, and neural networks are all sub-fields of artificial intelligence. However, deep learning is actually a sub-field of machine learning, and neural networks is a sub-field of deep learning.\r\n\r\nThe way in which deep learning and machine learning differ is in how each algorithm learns. Deep learning automates much of the feature extraction piece of the process, eliminating some of the manual human intervention required and enabling the use of larger data sets. You can think of deep learning as \"scalable machine learning\" as Lex Fridman notes in this MIT lecture (01:08:05) (link resides outside IBM). Classical, or \"non-deep\", machine learning is more dependent on human intervention to learn. Human experts determine the set of features to understand the differences between data inputs, usually requiring more structured data to learn.\r\n\r\n\"Deep\" machine learning can leverage labeled datasets, also known as supervised learning, to inform its algorithm, but it doesn’t necessarily require a labeled dataset. It can ingest unstructured data in its raw form (e.g. text, images), and it can automatically determine the set of features which distinguish different categories of data from one another. Unlike machine learning, it doesn\'t require human intervention to process data, allowing us to scale machine learning in more interesting ways. Deep learning and neural networks are primarily credited with accelerating progress in areas, such as computer vision, natural language processing, and speech recognition.\r\n\r\nNeural networks, or artificial neural networks (ANNs), are comprised of a node layers, containing an input layer, one or more hidden layers, and an output layer. Each node, or artificial neuron, connects to another and has an associated weight and threshold. If the output of any individual node is above the specified threshold value, that node is activated, sending data to the next layer of the network. Otherwise, no data is passed along to the next layer of the network. The “deep” in deep learning is just referring to the depth of layers in a neural network. A neural network that consists of more than three layers—which would be inclusive of the inputs and the output—can be considered a deep learning algorithm or a deep neural network. A neural network that only has two or three layers is just a basic neural network.\r\n    </p>\r\n</body>\r\n</html>'),
(7, 'cp', 'GCD', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n</head>\r\n<body>\r\n    <h3>\r\n        GCD, LCM, Euclidean Algorithm\r\n    </h3>\r\n    <p>\r\n        The definitions of GCD and LCM are well-known, (and taught in middle school I think) I will skip the definitions.\r\n        Also, since <code>lcm(a,b). gcd(a,b) = ab</code> calculating GCD is equivalent to calculating LCM.\r\n        <br>Now, how do we calculate the GCD of two numbers?\r\n        <br>\r\n        A naive solution would be iterating over all positive integers no more than <code>min(a,b)</code>.\r\n        This will get the GCD in <code>O(min(a,b))</code>, very very slow.\r\n        <br>\r\n        We can calculate the GCD of <code>a,b</code> in O(log(ab)) using Euclidean Algorithm.\r\n        This algorithm uses the easy-to-prove fact <code>gcd(a,b) = gcd(b,r)</code>, where <code>r</code> is the remainder when <code>a</code> is divided by <code>b</code>, or just <code>a%b</code>.\r\n        <br>\r\n        We can now use the following code.\r\n        <br>\r\n        <code>\r\n            #include  &lt;iostream&gt;  <br>\r\n                using namespace std; <br>\r\n                int gcd(int u, int v) <br>\r\n                { <br>\r\n                    return u%v==0?v:gcd(v,u%v); <br>\r\n                }<br>\r\n                int main(void) <br>\r\n                { <br>\r\n                    int x, y; <br>\r\n                    cin>>x>>y; <br>\r\n                    cout &lt; &lt; gcd(x,y); <br>\r\n                } <br>\r\n        </code>\r\n\r\n    </p>\r\n</body>\r\n</html>'),
(33, 'python', 'python-basic', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n</head>\r\n<body>\r\n    <h3>What is Python?</h3>\r\n    <p>\r\n        Python is a popular programming language. It was created by Guido van Rossum, and released in 1991. <br>\r\n        It is used for:\r\n        <li>web development (server-side),</li>\r\n        <li>software development,</li>\r\n        <li>mathematics, and so on.</li>\r\n    </p>\r\n    <h3>What can Python do?</h3>\r\n    <p>\r\n        <li>Python can be used on a server to create web applications.</li>\r\n        <li>Python can be used alongside software to create workflows.</li>\r\n        <li>Python can connect to database systems. It can also read and modify files.</li>\r\n        <li>Python can be used to handle big data and perform complex mathematics.</li>\r\n        <li>Python can be used for rapid prototyping, or for production-ready software development.</li>\r\n    </p>\r\n    <h3>Basic print code:</h3>\r\n    <p>\r\n        <code>\r\n            print(\"Hello, World!\")  \r\n        </code><br>\r\n        <b>output:</b>\r\n        <i>Hello, World!</i>\r\n    </p>\r\n</body>\r\n</html>'),
(34, 'python', 'syntax', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n</head>\r\n<body>\r\n    <h3>Execute Python Syntax</h3>\r\n    <p>\r\n        As we learned in the previous page, Python syntax can be executed by writing directly in the Command Line:\r\n    </p>\r\n    <p>\r\n        <code>\r\n            >>> print(\"Hello, World!\")\r\n            Hello, World! \r\n        </code><br>\r\n    </p>\r\n    <h3>Python Indentation</h3>\r\n    <p>\r\n        Indentation refers to the spaces at the beginning of a code line. <br>\r\n        Where in other programming languages the indentation in code is for readability only, the indentation in Python is very important. <br>\r\n        Python uses indentation to indicate a block of code. <br>\r\n    \r\n        <code>\r\n            if 5 > 2:\r\n              print(\"Five is greater than two!\")\r\n        </code>\r\n        <b>output:</b> <br>\r\n        <code>\r\n            Five is greater than two!\r\n        </code>\r\n        <br>\r\n        Python will give you an error if you skip the indentation:\r\n        <br>\r\n        <code>\r\n            if 5 > 2:\r\n            print(\"Five is greater than two!\")\r\n        </code> <br>\r\n        The number of spaces is up to you as a programmer, but it has to be at least one. <br>\r\n    </p>\r\n</body>\r\n</html>'),
(35, 'python', 'comment', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n</head>\r\n<body>\r\n    <h3>Python Comments</h3>\r\n    <p>\r\n        Comments can be used to explain Python code. <br>\r\n        Comments can be used to make the code more readable. <br>\r\n        Comments can be used to prevent execution when testing code. <br>\r\n    </p>\r\n    <p>\r\n        <code>\r\n            #This is a comment<br>\r\n            print(\"Hello, World!\")<br>\r\n        </code><br>\r\n        Comments can be placed at the end of a line, and Python will ignore the rest of the line:<br>\r\n        <br>\r\n        <code>\r\n            print(\"Hello, World!\") #This is a comment\r\n        </code>\r\n        <br>\r\n        </code>\r\n        <b>output:</b> <br>\r\n        <code>\r\n            Hello, World!<br>\r\n        </code>\r\n    </p>\r\n    <h3>Multi Line Comments </h3>\r\n    <p>\r\n        Python does not really have a syntax for multi line comments. To add a multiline comment you could insert a # for each line:\r\n    \r\n        <code>\r\n            #This is a comment<br>\r\n            #written in<br>\r\n            #more than just one line<br>\r\n            print(\"Hello, World!\")\r\n        </code><br>\r\n        <b>output:</b> <br>\r\n        <code>\r\n            Hello, World!\r\n        </code>\r\n        <br><br>\r\n        <code>\r\n            \"\"\"\r\n            This is a comment<br>\r\n            written in<br>\r\n            more than just one line\r\n            \"\"\"<br>\r\n            print(\"Hello, World!\")\r\n        </code><br>\r\n        <b>output:</b> <br>\r\n        <code>\r\n            Hello, World!\r\n        </code>\r\n    </p>\r\n</body>\r\n</html>'),
(36, 'ml', 'Linear Regression', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n</head>\r\n<body>\r\nIn statistics, linear regression is a linear approach for modelling the relationship between a scalar response and one or more explanatory variables (also known as dependent and independent variables). The case of one explanatory variable is called simple linear regression; for more than one, the process is called multiple linear regression.[1] This term is distinct from multivariate linear regression, where multiple correlated dependent variables are predicted, rather than a single scalar variable. <br>\r\n<br>In linear regression, the relationships are modeled using linear predictor functions whose unknown model parameters are estimated from the data. Such models are called linear models. Most commonly, the conditional mean of the response given the values of the explanatory variables (or predictors) is assumed to be an affine function of those values; less commonly, the conditional median or some other quantile is used. Like all forms of regression analysis, linear regression focuses on the conditional probability distribution of the response given the values of the predictors, rather than on the joint probability distribution of all of these variables, which is the domain of multivariate analysis.\r\n\r\n<br>Linear regression was the first type of regression analysis to be studied rigorously, and to be used extensively in practical applications. This is because models which depend linearly on their unknown parameters are easier to fit than models which are non-linearly related to their parameters and because the statistical properties of the resulting estimators are easier to determine.\r\n\r\n<br>Linear regression has many practical uses. Most applications fall into one of the following two broad categories:\r\n\r\n<li>If the goal is prediction, forecasting, or error reduction,[clarification needed] linear regression can be used to fit a predictive model to an observed data set of values of the response and explanatory variables. After developing such a model, if additional values of the explanatory variables are collected without an accompanying response value, the fitted model can be used to make a prediction of the response.</li> \r\n<li>If the goal is to explain variation in the response variable that can be attributed to variation in the explanatory variables, linear regression analysis can be applied to quantify the strength of the relationship between the response and the explanatory variables, and in particular to determine whether some explanatory variables may have no linear relationship with the response at all, or to identify which subsets of explanatory variables may contain redundant information about the response.</li> \r\n<br>Linear regression models are often fitted using the least squares approach, but they may also be fitted in other ways, such as by minimizing the \"lack of fit\" in some other norm (as with least absolute deviations regression), or by minimizing a penalized version of the least squares cost function as in ridge regression (L2-norm penalty) and lasso (L1-norm penalty). Conversely, the least squares approach can be used to fit models that are not linear models. Thus, although the terms \"least squares\" and \"linear model\" are closely linked, they are not synonymous.\r\n<br>\r\n</body>\r\n</html>'),
(37, 'cp', 'Modulo', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n</head>\r\n<body>\r\n<h3>Introduction:</h3>\r\n<p>\r\n    Problems in competitive programming which involve Mathematics are are usually about number theory, or geometry. If you know number theory, that increases your ammo heavily in solving a lot of tougher problems, and helps you in getting a strong hold on a lot of other problems, too. <br>\r\n    Problems in competitive programming require insight, so just knowing some topics is not enough at all. All of the problems requires more or less math tough. For instance, solving large systems of equations and approximating solutions to differential equations.\r\n</p>\r\n<h3>Modulo:</h3>\r\n\r\n<p>\r\n    Modulo operation gives the remainder after division, when one number is divided by another. It is denoted by % sign. <br>\r\n    <b>Example:</b>  <br>\r\n    We have two numbers 5 and 2, then 5%2 is 1 as when 5 is divided by 2, it leaves 1 as remainder.\r\n    <br>\r\n    <b>Properties:</b>\r\n    Some of the properties of modulo are:\r\n    <code>\r\n        \r\n<br>(a+b)%c = (a%c + b%c )%c.\r\n<br>(a * b)%c = ((a%c) * (b%c))%c. <br>\r\n    </code>\r\n<b>Example:</b>  <br>\r\n<code>\r\n    Let’s say a = 5, b = 3, c = 2. <br>\r\n    Then:<br>\r\n    1) (5+3)%2 = 8%2 = 0. <br>\r\n    Similarly (5%2 + 3%2)%2 = (1 + 1)%2 = 0. <br>\r\n    2) (5 * 3)%2 = 15%2 = 1. <br>\r\n    Similarly ( (5%2) * (3%2) )%2 = (1 * 1)%2 = 1.\r\n    <br></code>\r\n</p>\r\n</body>\r\n</html>'),
(38, 'cp', 'Euclid’s Algorithm', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n</head>\r\n<body>\r\n<h3>Euclid’s Algorithm:</h3>\r\n<p>\r\n    Idea behind Euclid’s Algorithm is GCD(A, B) = GCD(B, A % B). The algorithm will recurse until A % B = 0.\r\n</p>\r\n<h3>Modulo:</h3>\r\n\r\n<p>\r\n    <code>\r\n        int GCD(int A, int B) { <br>\r\n            if(B==0) <br>\r\n                return A; <br>\r\n            else <br>\r\n                return GCD(B, A % B); <br>\r\n        } <br>\r\n    </code>\r\n    Let us take an example.\r\n<br>\r\n    <code>\r\n        Let A = 16, B = 10. <br>\r\nGCD(16, 10) = GCD(10, 16 % 10) = GCD(10, 6) <br>\r\nGCD(10, 6) = GCD(6, 10 % 6) = GCD(6, 4) <br>\r\nGCD(6, 4) = GCD(4, 6 % 4) = GCD(4, 2) <br>\r\nGCD(4, 2) = GCD(2, 4 % 2) = GCD(2, 0) <br>\r\n    </code>\r\n    Since B = 0 so GCD(2, 0) will return 2.\r\n    Time Complexity: The time complexity of Euclid’s Algorithm is <code>O(log(max(A, B)))</code> \r\n</p>\r\n\r\n<h3>Extended Euclid Algorithm:</h3>\r\n\r\n<p>\r\n    This is the extended form of Euclid’s Algorithm explained above. GCD(A,B) has a special property that it can always be represented in the form of an equation, i.e., Ax + By = GCD(A, B). <br>\r\n\r\n    This algorithm gives us the coefficients (x and y) of this equation which will be later useful in finding the Modular Multiplicative Inverse. These coefficients can be zero or negative in their value. This algorithm takes two inputs as A and B and returns GCD(A, B) and coefficients of the above equations as output. <br>\r\n    <b>Implementation: </b>\r\n\r\n    <code>\r\n        #include &lt; iostream &gt; <br>\r\n        <br>\r\n        int d, x, y; <br>\r\n        void extendedEuclid(int A, int B) {\r\n        <br>if(B == 0) {\r\n                <br>d = A;\r\n                <br>x = 1;\r\n                <br>y = 0;\r\n        <br>}\r\n        <br>else {\r\n            <br>extendedEuclid(B, A%B);\r\n            <br>int temp = x;\r\n            <br>x = y;\r\n            <br>y = temp - (A/B)*y;\r\n            <br> }\r\n            <br>}\r\n            <br>\r\n        <br>int main( ) {\r\n            <br>extendedEuclid(16, 10);\r\n            <br>cout &lt;&lt; ”The GCD of 16 and 10 is ” &lt;&lt; d &lt; endl;\r\n            <br>cout &lt;&lt; ”Coefficient x and y are: ”&lt;&lt; x &lt;&lt;  “and  “ &lt;&lt; y &lt;&lt; endl;\r\n            <br>return 0;   \r\n        <br>}\r\n    </code> <br>\r\n    <b>Output:</b> <br>\r\n    <code>\r\n        The GCD of 16 and 10 is 2 <br>\r\n        Coefficient x and y are: 2 and -3 <br>\r\n    </code> <br>\r\n    Initially, Extended Euclid Algorithm will run as Euclid Algorithm until we get GCD(A, B) or until B gets 0 and then it will assign x = 1 and y = 0. As B = 0 and GCD(A, B) is A in the current condition, so equation Ax + By = GCD(A, B) will be changed to A * 1 + 0 * 0 = A.\r\n    <br>\r\n    So the values of d, x, y in the whole process of extendedEuclid( ) function are: <br>\r\n    <br> \r\n    1) d=2, x = 1, y = 0. <br>\r\n    2) d=2, x = 0 , y = 1 - (4 /2) * 0 = 1. <br>\r\n    3) d=2, x = 1 , y = 0 - (6/4) * 1 = -1. <br>\r\n    4) d=2, x = -1 , y = 1 - (10/6) * -1 = 2. <br>\r\n    5) d=2 , x= 2, y = -1 - (16/10) * 2 = -3. <br>\r\n</p>\r\n\r\n</body>\r\n</html>'),
(40, 'python', 'asds', 'asdsad');

-- --------------------------------------------------------

--
-- Table structure for table `registration_info`
--

CREATE TABLE `registration_info` (
  `serial` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration_info`
--

INSERT INTO `registration_info` (`serial`, `fullname`, `username`, `email`, `password`) VALUES
(2, 'Mahadi Hasan', 'shakil58', 'shakil58@gmail.com', 'shakil58'),
(5, 'Tahmid Hasan ', 'thf', 'thf@gmail.com', 'thf'),
(7, 'Sabbir Hossain', 'shossain', 'shossain@gmail.com', 'shossain'),
(8, 'Ashfaqul Adel', 'aasiam', 'aasiam@gmail.com', 'aasiam'),
(9, 'Masum Sujon', 'sujon', 'sujon@gmail.com', 'sujon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `content_info`
--
ALTER TABLE `content_info`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `registration_info`
--
ALTER TABLE `registration_info`
  ADD PRIMARY KEY (`serial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_info`
--
ALTER TABLE `content_info`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `registration_info`
--
ALTER TABLE `registration_info`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
