-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2023 at 07:07 PM
-- Server version: 5.7.42-0ubuntu0.18.04.1
-- PHP Version: 5.6.40-65+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` text NOT NULL,
  `admin_email` text NOT NULL,
  `admin_pass` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `created_at`) VALUES
(1, 'Admin user', 'admin@gmail.com', '12245678', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(255) NOT NULL,
  `article_title` longtext NOT NULL,
  `article_slug` text NOT NULL,
  `article_category` text NOT NULL,
  `arr_main_img` text NOT NULL,
  `article_tag` text NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `article_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `article_title`, `article_slug`, `article_category`, `arr_main_img`, `article_tag`, `date`, `status`, `article_des`) VALUES
(28, 'sdjksd sdjkdsjkds  kjs s sddsjkdsj  dvdv', 'sdjksd-sdjkdsjkds-kjs-s-sddsjkdsj-dvdv', 'test', 'uploads/649306a1405ad0.63750259.webp', '\"[{\"value\":\"sd\"}]\"', '2023-06-21', 1, '{\"html\":\"%3Cp%3Edsds%3C%2Fp%3E\"}'),
(31, 'greate', 'greate', 'testthree', 'uploads/64955bb1716166.99615899.webp', '\"[{\"value\":\"wefwef\"}]\"', '2023-06-23', 1, '{\"html\":\"%3Cp%3Eewfwef%3C%2Fp%3E\"}'),
(32, 'test', 'test', 'test', 'uploads/6495437313ea02.43690557.webp', '\"[{\"value\":\"x\"},{\"value\":\"swd\"},{\"value\":\"a\"},{\"value\":\"z\"}]\"', '2023-06-23', 1, '{\"html\":\"%3Cstyle%3E%0D%0A++++.privacy_policy_page%7B%0D%0A++++++++display%3A+block%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++++++padding%3A+50px+15px+60px+15px%3B%0D%0A++++++++background%3A+%23fbf7f4%3B%0D%0A++++%7D%0D%0A++++.custom_container%7B%0D%0A++++max-width%3A1140px%3B%0D%0A++++margin%3A0+auto%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_header%7B%0D%0A++++++++display%3A+grid%3B%0D%0A++++++++gap%3A+10px+0px%3B%0D%0A++++++++text-align%3A+center%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++++++padding-bottom%3A+30px%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_header+small%7B%0D%0A++++++++font-style%3A+normal%3B%0D%0A++++++++font-weight%3A+600%3B%0D%0A++++++++font-size%3A+14px%3B%0D%0A++++++++line-height%3A+24px%3B%0D%0A++++++++letter-spacing%3A+0.1em%3B%0D%0A++++++++color%3A+%23e51451%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_header+h1%7B%0D%0A++++++++font-style%3A+normal%3B%0D%0A++++++++font-weight%3A+bold+%21important%3B%0D%0A++++++++font-size%3A+68px%3B%0D%0A++++++++line-height%3A+74px%3B%0D%0A++++++++text-align%3A+center%3B%0D%0A++++++++color%3A+%23000000%3B%0D%0A++++++++margin%3A+0px+%21important%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_header+h1+.heading_dot_color%7B%0D%0A++++++++color%3A+%23e51451+%21important%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_header+p%7B%0D%0A++++++++font-style%3A+normal%3B%0D%0A++++++++font-weight%3A+normal%3B%0D%0A++++++++font-size%3A+18px%3B%0D%0A++++++++line-height%3A+28px%3B%0D%0A++++++++text-align%3A+center%3B%0D%0A++++++++color%3A+rgba%280%2C+0%2C+0%2C+0.7%29%3B%0D%0A++++++++margin-bottom%3A+15px%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++%7D%0D%0A+++%0D%0A++++.privacy_policy_detail%7B%0D%0A+++++++display%3A+grid%3B%0D%0A++++++++gap%3A+20px+0px%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_description%7B%0D%0A+++++++display%3A+grid%3B%0D%0A++++++++gap%3A+10px+0px%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_description+p%7B%0D%0A+++++font-style%3A+normal%3B%0D%0A++++++++font-weight%3A+normal%3B%0D%0A++++++++font-size%3A+18px%3B%0D%0A++++++++line-height%3A+28px%3B%0D%0A++++++++color%3A+rgba%280%2C+0%2C+0%2C+0.7%29%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_two+p+a+%7B%0D%0A++++++++color%3A+rgba%280%2C+0%2C+0%2C+0.7%29%3B%0D%0A++++++++text-decoration%3A+none%3B%0D%0A++++++++font-weight%3A+bold%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_two%7B%0D%0A+++++++display%3A+grid%3B%0D%0A++++++++gap%3A+10px+0px%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_two+h2%7B%0D%0A++++++++font-style%3A+normal%3B%0D%0A++++++++font-weight%3A+600%3B%0D%0A++++++++font-size%3A+20px%3B%0D%0A++++++++line-height%3A+24px%3B%0D%0A++++++++letter-spacing%3A+0.1em%3B%0D%0A++++++++text-transform%3A+uppercase%3B%0D%0A++++++++color%3A+%23000000%3B%0D%0A++++++++margin%3A+0px+%21important%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_two+p%7B%0D%0A+++++font-style%3A+normal%3B%0D%0A++++++++font-weight%3A+normal%3B%0D%0A++++++++font-size%3A+18px%3B%0D%0A++++++++line-height%3A+28px%3B%0D%0A++++++++color%3A+rgba%280%2C+0%2C+0%2C+0.7%29%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_two+ul%7B%0D%0A+++++++display%3A+grid%3B%0D%0A++++++++gap%3A+10px+0px%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++++++padding%3A+0px+0px+0px+17px%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_two+ul+li%7B%0D%0A+++++font-style%3A+normal%3B%0D%0A++++++++font-weight%3A+normal%3B%0D%0A++++++++font-size%3A+18px%3B%0D%0A++++++++line-height%3A+28px%3B%0D%0A++++++++color%3A+rgba%280%2C+0%2C+0%2C+0.7%29%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++++++list-style%3A+square%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_two+ul+li%3A%3Amarker%7B%0D%0A++++++++color%3A+%23e51451+%21important%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_two+ol%7B%0D%0A+++++++display%3A+grid%3B%0D%0A++++++++gap%3A+10px+0px%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++++++padding%3A+0px+0px+0px+17px%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_two+ol+li%7B%0D%0A+++++font-style%3A+normal%3B%0D%0A++++++++font-weight%3A+normal%3B%0D%0A++++++++font-size%3A+18px%3B%0D%0A++++++++line-height%3A+28px%3B%0D%0A++++++++color%3A+rgba%280%2C+0%2C+0%2C+0.7%29%3B%0D%0A++++++++width%3A+100%25%3B%0D%0A++++%7D%0D%0A++++%40media+%28max-width%3A+1024px%29%7B%0D%0A++++.privacy_policy_header+h1%7B%0D%0A++++++++font-size%3A+60px%3B%0D%0A++++++++line-height%3A+62px%3B%0D%0A++++%7D%0D%0A++++%7D%0D%0A++++%0D%0A++++%40media+%28max-width%3A+768px%29%7B%0D%0A++++.privacy_policy_header+h1%7B%0D%0A++++font-size%3A+45px%3B%0D%0A++++++++line-height%3A+49px%3B%0D%0A++++%7D%0D%0A++++%7D%0D%0A++++%40media+%28max-width%3A+540px%29%7B%0D%0A++++.privacy_policy_header+h1%7B%0D%0A++++++++font-size%3A+36px%3B%0D%0A++++++++line-height%3A+42px%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_description+%7B%0D%0A++++++++text-align%3A+center%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_detail_two+%7B%0D%0A++++++++text-align%3A+center%3B%0D%0A++++%7D%0D%0A++++%7D%0D%0A++++%40media+%28max-width%3A+450px%29%7B%0D%0A++++.privacy_policy_header+%7B%0D%0A++++++++gap%3A+10px+0px%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_header+small+%7B%0D%0A++++++++font-size%3A+13px%3B%0D%0A++++++++line-height%3A+20px%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_header+h1%7B%0D%0A++++++++font-size%3A+24px%3B%0D%0A++++++++line-height%3A+30px%3B%0D%0A++++%7D%0D%0A++++.privacy_policy_header+p+%7B%0D%0A++++++++font-size%3A+16px%3B%0D%0A++++++++line-height%3A+20px%3B%0D%0A++++%7D%0D%0A++++%7D%0D%0A++++%0D%0A++++%3C%2Fstyle%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_page%22%3E%0D%0A%3Cdiv+class%3D%22custom_container%22%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_header%22%3E%3Csmall%3Etossdown+Inc.%3C%2Fsmall%3E%0D%0A%3Ch1%3EPrivacy+Policy%3Cspan+class%3D%22heading_dot_color%22%3E.%3C%2Fspan%3E%3C%2Fh1%3E%0D%0A%3Cp%3ELast+Updated%3A+February+11%2C+2022%3C%2Fp%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail%22%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail_description%22%3E%0D%0A%3Cp%3EAt+tossdown+Inc%2C+accessible+from+https%3A%2F%2Ftossdown.com%2C+one+of+our+main+priorities+is+the+privacy+of+our+visitors.+This+Privacy+Policy+document+contains+types+of+information+that+is+collected+and+recorded+by+tossdown+and+how+we+use+it.%3C%2Fp%3E%0D%0A%3Cp%3EIf+you+have+additional+questions+or+require+more+information+about+our+Privacy+Policy%2C+do+not+hesitate+to+contact+us.%3C%2Fp%3E%0D%0A%3Cp%3EThis+Privacy+Policy+applies+only+to+our+online+activities+and+is+valid+for+visitors+to+our+website+with+regards+to+the+information+that+they+shared+and%2For+collected+in+tossdown.+This+policy+is+not+applicable+to+any+information+collected+offline+or+via+channels+other+than+this+website.%3C%2Fp%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail_two%22%3E%0D%0A%3Ch2%3EConsent%3C%2Fh2%3E%0D%0A%3Cp%3EBy+using+our+website%2C+you+hereby+consent+to+our+Privacy+Policy+and+agree+to+its+terms.%3C%2Fp%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail_two%22%3E%0D%0A%3Ch2%3EInformation+we+collect%3C%2Fh2%3E%0D%0A%3Cp%3EThe+personal+information+that+you+are+asked+to+provide%2C+and+the+reasons+why+you+are+asked+to+provide+it%2C+will+be+made+clear+to+you+at+the+point+we+ask+you+to+provide+your+personal+information.%3C%2Fp%3E%0D%0A%3Cp%3EIf+you+contact+us+directly%2C+we+may+receive+additional+information+about+you%2C+such+as+your+name%2C+email+address%2C+phone+number%2C+the+contents+of+the+message+and%2For+attachments+you+may+send+us%2C+and+any+other+information+you+may+choose+to+provide.%3C%2Fp%3E%0D%0A%3Cp%3EWhen+you+first+interact+with+our+website%2C+we+may+ask+for+your+contact+information%2C+including+items+such+as+name%2C+company+name%2C+address%2C+email+address%2C+and+telephone+number.%3C%2Fp%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail_two%22%3E%0D%0A%3Ch2%3EHow+we+use+your+information%3C%2Fh2%3E%0D%0A%3Cp%3EThe+information+collected+on+the+website+can+be+used+in+various+ways%2C+including+to%3A%3C%2Fp%3E%0D%0A%3Cul%3E%0D%0A%3Cli%3EProvide%2C+operate%2C+and+maintain+our+website%3C%2Fli%3E%0D%0A%3Cli%3EImprove%2C+personalize%2C+and+expand+our+website%3C%2Fli%3E%0D%0A%3Cli%3EUnderstand+and+analyze+how+you+use+our+website%3C%2Fli%3E%0D%0A%3Cli%3EDevelop+new+products%2C+services%2C+features%2C+and+functionality%3C%2Fli%3E%0D%0A%3Cli%3ECommunicate+with+you%2C+either+directly+or+through+one+of+our+partners%2C+including+for+customer+service%2C+to+provide+you+with+updates+and+other+information+relating+to+the+website+and+for+marketing+and+promotional+purposes%3C%2Fli%3E%0D%0A%3Cli%3ESend+you+emails%3C%2Fli%3E%0D%0A%3Cli%3EFind+and+prevent+fraudulent+activity%3C%2Fli%3E%0D%0A%3Cli%3EMight+use+for+legal+purposes%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail_two%22%3E%0D%0A%3Ch2%3ELog+Files%3C%2Fh2%3E%0D%0A%3Cp%3Etossdown+follows+a+standard+procedure+of+using+log+files.+These+files+log+visitors+when+they+visit+websites.+All+hosting+companies+do+this+as+part+of+hosting+services%27+analytics.+The+information+collected+by+log+files+include+internet+protocol+%28IP%29+addresses%2C+browser+type%2C+Internet+Service+Provider+%28ISP%29%2C+date+and+time+stamp%2C+referring%2Fexit+pages%2C+and+possibly+the+number+of+clicks.+These+are+not+linked+to+any+information+that+is+personally+identifiable.+The+purpose+of+the+information+is+for+analyzing+trends%2C+administering+the+site%2C+tracking+users%27+movement+on+the+website%2C+and+gathering+demographic+information.%3C%2Fp%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail_two%22%3E%0D%0A%3Ch2%3ECookies+and+Web+Beacons%3C%2Fh2%3E%0D%0A%3Cp%3ELike+any+other+website%2C+tossdown+uses+%27%3Ca+href%3D%22https%3A%2F%2Fwww.allaboutcookies.org%22+target%3D%22blank%22%3Ecookies%3C%2Fa%3E%27.+These+cookies+are+used+to+store+information%2C+including+visitors%27+preferences+and+the+pages+on+the+website+that+the+visitor+accessed+or+visited.+The+information+is+used+to+optimize+the+users%27+experience+by+customizing+our+web+page+content+based+on+visitors%27+browser+type+and%2For+other+information.%3C%2Fp%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail_two%22%3E%0D%0A%3Ch2%3EThird-Party+Privacy+Policies%3C%2Fh2%3E%0D%0A%3Cp%3Etossdown%27s+Privacy+Policy+does+not+apply+to+other+advertisers+or+websites.+Thus%2C+we+are+advising+you+to+consult+the+respective+Privacy+Policies+of+these+third-party+ad+servers+for+more+detailed+information.+It+may+include+their+practices+and+instructions+about+how+to+opt+out+of+certain+options.%3C%2Fp%3E%0D%0A%3Cp%3EYou+can+choose+to+disable+cookies+through+your+individual+browser+options.+To+know+more+detailed+information+about+cookie+management+with+specific+web+browsers%2C+it+can+be+found+on+the+browsers%27+respective+websites.+Below+are+the+third-party+services+that+tossdown+uses+to+help+us+understand+how+you+use+the+site+and+improve+upon+your+experience.+A+link+to+their+privacy+policy+is+given+in+front+of+the+mentioned+third-party+services+that+we+use.+We+take+help+from+%3Ca+href%3D%22https%3A%2F%2Fpolicies.google.com%2Ftechnologies%2Fpartner-sites%22+target%3D%22_blank%22+rel%3D%22noopener+nofollow%22%3EGoogle+Analytics+-+Privacy+Policy%3C%2Fa%3E%2C+%3Ca+href%3D%22https%3A%2F%2Flegal.hubspot.com%2Fprivacy-policy%3F__hstc%3D126249106.f71101f43fe79d9a7e3b54f8d08155c7.1659080177318.1661516963506.1661770929579.6%26amp%3B__hssc%3D126249106.2.1661770929579%26amp%3B__hsfp%3D3635348595%22+target%3D%22_blank%22+rel%3D%22noopener+nofollow%22%3EHubSpot+-+Privacy+Policy%3C%2Fa%3E%2C+and+%3Ca+href%3D%22https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fclarity%2Ffaq%23privacy%22+target%3D%22_blank%22+rel%3D%22noopener+nofollow%22%3EMicrosoft+Clarity+-+Privacy+Policy%3C%2Fa%3E+on+our+website+to+understand+user+behavior+and+improve+the+web+surfing+experience.+Their+privacy+practices+and+policies+can+be+found+in+the+aforementioned+links.%3C%2Fp%3E%0D%0A%3Cp%3EWe+do+not+share+any+information+collected+%E2%80%93+either+personal+or+anonymous+%E2%80%93+with+any+other+parties%2C+with+the+exception+of+the+reporting+programs+we+use+in+conjunction+with+those+cookies.+By+continuing+to+use+this+site%2C+you+agree+to+the+use+of+these+cookies.+If+you+do+not+agree%2C+please+close+the+site.%3C%2Fp%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail_two%22%3E%0D%0A%3Ch2%3ECCPA+Privacy+Rights+%28Do+Not+Sell+My+Personal+Information%29%3C%2Fh2%3E%0D%0A%3Cp%3EUnder+the+CCPA%2C+among+other+rights%2C+California+consumers+have+the+right+to%3A%3C%2Fp%3E%0D%0A%3Cul%3E%0D%0A%3Cli%3ERequest+that+a+business+that+collects+a+consumer%27s+personal+data+disclose+the+categories+and+specific+pieces+of+personal+data+that+a+business+has+collected+about+consumers.%3C%2Fli%3E%0D%0A%3Cli%3ERequest+that+a+business+deletes+any+personal+data+about+the+consumer+that+a+business+has+collected.%3C%2Fli%3E%0D%0A%3Cli%3ERequest+that+a+business+that+sells+a+consumer%27s+personal+data%2C+not+sell+the+consumer%27s+personal+data.%3C%2Fli%3E%0D%0A%3C%2Ful%3E%0D%0A%3Cp%3EIf+you+make+a+request%2C+we+have+one+month+to+respond+to+you.+If+you+would+like+to+exercise+any+of+these+rights%2C+please+contact+us.%3C%2Fp%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail_two%22%3E%0D%0A%3Ch2%3EUser+Protection+Rights+under+GDPR%3C%2Fh2%3E%0D%0A%3Col%3E%0D%0A%3Cli%3EThe+right+to+be+informed%3B+This+means+anyone+processing+your+personal+data+must+make+clear+what+they+are+processing%2C+why%2C+and+to+whom+else+the+data+may+be+passed+to.%3C%2Fli%3E%0D%0A%3Cli%3EThe+right+of+access%3B+this+is+your+right+to+see+what+data+is+held+about+you+by+a+Data+Controller.%3C%2Fli%3E%0D%0A%3Cli%3EThe+right+to+rectification%3B+The+right+to+have+your+data+corrected+or+amended+if+what+is+held+is+incorrect+in+some+way.%3C%2Fli%3E%0D%0A%3Cli%3EThe+right+to+erasure%3B+under+certain+circumstances+you+can+ask+for+your+personal+data+to+be+deleted.+This+is+also+called+%27the+Right+to+be+Forgotten%27.+This+would+apply+if+the+personal+data+is+no+longer+required+for+the+purposes+it+was+collected+for%2C+or+your+consent+for+the+processing+of+that+data+has+been+withdrawn%2C+or+the+personal+data+has+been+unlawfully+processed.%3C%2Fli%3E%0D%0A%3Cli%3EThe+right+to+restrict+processing%3B+This+gives+the+Data+Subject+the+right+to+ask+for+a+temporary+halt+to+the+processing+of+personal+data%2C+such+as+in+the+case+where+a+dispute+or+legal+case+has+to+be+concluded%2C+or+the+data+is+being+corrected.%3C%2Fli%3E%0D%0A%3Cli%3EThe+right+to+data+portability%3B+a+Data+Subject+has+the+right+to+ask+for+any+data+supplied+directly+to+the+Data+Controller+by+him+or+her%2C+to+be+provided+in+a+structured%2C+commonly+used%2C+and+machine-readable+format.%3C%2Fli%3E%0D%0A%3Cli%3EThe+right+to+object%3B+the+Data+Subject+has+the+right+to+object+to+the+further+processing+of+their+data+that+is+inconsistent+with+the+primary+purpose+for+which+it+was+collected%2C+including+profiling%2C+automation%2C+and+direct+marketing.%3C%2Fli%3E%0D%0A%3Cli%3ERights+in+relation+to+automated+decision+making+and+profiling%3B+Data+Subjects+have+the+right+not+to+be+subject+to+a+decision+based+solely+on+automated+processing.%3C%2Fli%3E%0D%0A%3C%2Fol%3E%0D%0A%3Cp%3EIf+you+make+a+request%2C+we+have+one+month+to+respond+to+you.+If+you+would+like+to+exercise+any+of+these+rights%2C+please+contact+us.%3C%2Fp%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3Cdiv+class%3D%22privacy_policy_detail_two%22%3E%0D%0A%3Ch2%3EChildren%27s+Information%3C%2Fh2%3E%0D%0A%3Cp%3EAnother+part+of+our+priority+is+adding+protection+for+children+while+using+the+internet.+We+encourage+parents+and+guardians+to+observe%2C+participate+in%2C+and%2For+monitor+and+guide+their+online+activity.%3C%2Fp%3E%0D%0A%3Cp%3Etossdown+does+not+knowingly+collect+any+Personal+Identifiable+Information+from+children+under+the+age+of+13.+If+you+think+that+your+child+provided+this+kind+of+information+on+our+website%2C+we+strongly+encourage+you+to+contact+us+immediately+and+we+will+do+our+best+efforts+to+promptly+remove+such+information+from+our+records.%3C%2Fp%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3C%2Fdiv%3E%0D%0A%3C%2Fdiv%3E\"}');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` longtext NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_image`) VALUES
(3, 'hello cat', 'Your-Cart-Ponys.png'),
(4, 'test', 'WhatsApp Image 2023-04-24 at 1.51.08 AM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(255) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`, `date`, `status`) VALUES
(2, 'testthree', '2023-05-15', 'active'),
(45, 'test', '2023-05-15', 'active'),
(46, 'test', '2023-05-15', 'active'),
(48, 'test2', '2023-05-29', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_phone` text NOT NULL,
  `customer_address` text NOT NULL,
  `created_at` int(11) NOT NULL,
  `customer_email` text NOT NULL,
  `customer_pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_phone`, `customer_address`, `created_at`, `customer_email`, `customer_pass`) VALUES
(0, 'noonnukta@tossdown.com', '03024065093', 'kjj', 2023, 'zohaibzafar463@gmail.com', '1234'),
(1, 'Sheri yqr', '1234556', 'hello', 0, 'test@test.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` int(11) NOT NULL,
  `setting_name` text NOT NULL,
  `setting_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_note` text NOT NULL,
  `created_at` date NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `customer_id`, `order_note`, `created_at`, `address`) VALUES
(4, 'r_644babee903625.17991604', 0, '', '2023-04-28', 'no address'),
(5, 'r_644bac2a905fc5.36200591', 1, '', '2023-04-28', 'no address'),
(6, 'r_64523c9de46008.29567788', 1, '', '2023-05-03', 'sasaasaa'),
(7, 'r_6454e1fd006a43.39914050', 1, '', '2023-05-05', 'University of Toronto Mississauga, Mississauga Road, Mississauga, ON, Canada'),
(8, 'r_6468ac379922c0.35443091', 1, '', '2023-05-20', 'h# 12jkkj  ksd');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `created_at` date NOT NULL,
  `order_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `product_id`, `quantity`, `price`, `created_at`, `order_id`) VALUES
(4, 1, 1, 293, '2023-04-15', '2'),
(5, 2, 1, 344, '2023-04-15', '0'),
(6, 3, 1, 56, '2023-04-15', '0'),
(7, 1, 1, 293, '2023-04-15', '0'),
(8, 2, 2, 344, '2023-04-15', '0'),
(9, 3, 1, 56, '2023-04-15', '0'),
(10, 1, 1, 123, '2023-04-28', 'r_644baae1c48854.48509091'),
(11, 1, 1, 123, '2023-04-28', 'r_644babee903625.17991604'),
(12, 1, 2, 123, '2023-04-28', 'r_644bac2a905fc5.36200591'),
(13, 1, 1, 123, '2023-05-03', 'r_64523c9de46008.29567788'),
(14, 8, 1, 123, '2023-05-03', 'r_64523c9de46008.29567788'),
(15, 1, 2, 123, '2023-05-05', 'r_6454e1fd006a43.39914050'),
(16, 14, 1, 2333, '2023-05-20', 'r_6468ac379922c0.35443091');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_price` float NOT NULL,
  `product_image` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `product_name`, `product_desc`, `product_price`, `product_image`, `created_at`) VALUES
(16, 0, 'Headphones', 'lorem ipsum dolor suit emat', 112, 'Headphones-PNG-Image.png', '2023-05-24'),
(17, 0, 'Xbox Controller', 'lorem ipsum dolor suit emet', 789, 'Xbox-Controller-PNG-Clipart.png', '2023-05-24'),
(19, 0, 'Battery', 'LOREM IPSUM', 233, 'Battery-PNG-Transparent-Picture.png', '2023-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `sub_id` int(11) NOT NULL,
  `sub_name` text NOT NULL,
  `sub_phone` text NOT NULL,
  `sub_email` text NOT NULL,
  `sub_message` text NOT NULL,
  `sub_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`sub_id`, `sub_name`, `sub_phone`, `sub_email`, `sub_message`, `sub_date`) VALUES
(1, 'Zohaib lkas', '+920982382323', 'zohaibzafar463@gmail.com', 'hh', '2023-05-18'),
(2, 'Zohaib lkas', '4334', 'zohaibzafar463@gmail.com', '34 HELLO', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subsc_id` int(11) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`subsc_id`, `email`) VALUES
(1, 'test@test.com'),
(2, 'royaldelight@tossdown.com'),
(3, 'royaldelight@tossdown.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` text,
  `user_email` text,
  `user_pass` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `created_at`) VALUES
(1, 'test', 'test@test.com', '1234', '2023-04-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subsc_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `subsc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
