import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Privacy Policy"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "Last updated: July 12, 2022",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(),
                Text(
                  "This Privacy Policy describes Our policies and procedures on the collection, use and" +
                      "disclosure of Your information when You use the Service and tells You about Your privacy" +
                      "rights and how the law protects You.",
                  style: TextStyle(color: Colors.black),
                ),
                Divider(),
                Text(
                  "Interpretation and Definitions",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "Interpretation",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  "The words of which the initial letter is capitalized have meanings defined under the" +
                      "following conditions. The following definitions shall have the same meaning regardless of" +
                      "whether they appear in singular or in plural.",
                  style: TextStyle(color: Colors.black),
                ),
                Divider(),
                Text(
                  "Definitions",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  "For the purposes of this Privacy Policy:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Account means a unique account created for You to access our Service or parts of" +
                      "our Service.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Affiliate means an entity that controls, is controlled by or is under common control" +
                      "with a party, where control means ownership of 50% or more of the shares, equity" +
                      "interest or other securities entitled to vote for election of directors or other" +
                      "managing authority.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  " Application means the software program provided by the Company downloaded by" +
                      "You on any electronic device, named BuiltUp",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  """Company (referred to as either "the Company", "We", "Us" or "Our" in this""" +
                      "    Agreement) refers to BuiltUp.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Country refers to: Gujarat, India",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Device means any device that can access the Service such as a computer, a" +
                      "cellphone or a digital tablet",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Personal Data is any information that relates to an identified or identifiable" +
                      "individual. Service refers to the Application.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Service Provider means any natural or legal person who processes the data on" +
                      "behalf of the Company. It refers to third-party companies or individuals employed" +
                      "by the Company to facilitate the Service, to provide the Service on behalf of the" +
                      "Company, to perform services related to the Service or to assist the Company in" +
                      "analyzing how the Service is used.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Usage Data refers to data collected automatically, either generated by the use of the" +
                      "Service or from the Service infrastructure itself (for example, the duration of a page" +
                      "visit).",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "You means the individual accessing or using the Service, or the company, or other" +
                      "legal entity on behalf of which such individual is accessing or using the Service, as" +
                      "applicable",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Collecting and Using Your Personal Data",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Divider(),
                Text(
                  "Types of Data Collected",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Divider(),
                Text(
                  "Personal Data",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Divider(),
                Text(
                  "While using Our Service, We may ask You to provide Us with certain personally identifiable" +
                      "information that can be used to contact or identify You. Personally identifiable information" +
                      "may include, but is not limited to:\n" +
                      "Email address\n" +
                      "Usage Data",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                //Usage Data
                Divider(),
                Text(
                  "Usage Data",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Divider(),
                Text(
                  """Usage Data is collected automatically when using the Service.\n\nUsage Data may include information such as Your Device's Internet Protocol address (e.g. IP       address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.\n
When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.\n
We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device""",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Use of Your Personal Data",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Divider(),
                Text(
                  "The Company may use Personal Data for the following purposes:",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Text(
                  """ To provide and maintain our Service, including to monitor the usage of our Service.\n
To manage Your Account: to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.\n
For the performance of a contract: the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service\n
To contact You: To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application's push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.\n
To provide You with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.\n
To manage Your requests: To attend and manage Your requests to Us.\n
For business transfers: We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.\n
For other purposes: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.
                """,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "We may share Your personal information in the following situations:",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Text(
                  """With Service Providers: We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.\n
For business transfers: We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets,financing, or acquisition of all or a portion of Our business to another company.\n
With Affiliates: We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.\n
With business partners: We may share Your information with Our business partners to offer You certain products, services or promotions.\n
With other users: when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.\n
With Your consent: We may disclose Your personal information for any other purpose with Your consent.""",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Retention of Your Personal Data",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Text(
                  """The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.\n
The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.""",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Transfer of Your Personal Data",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Text(
                  """Your information, including Personal Data, is processed at the Company's operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.\n
Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.\n
The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.""",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Disclosure of Your Personal Data",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Text(
                  """Business Transactions\n
If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.\n
Law enforcement\n
Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).\n
Other legal requirements\n
The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:\n
Comply with a legal obligation\n
Protect and defend the rights or property of the Company\n
Prevent or investigate possible wrongdoing in connection with the Service\n
Protect the personal safety of Users of the Service or the public\n
Protect against legal liability""",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Security of Your Personal Data",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Text(
                  """The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security""",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Children's Privacy",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Divider(),
                Text(
                  """Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.\n
If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent's consent before We collect and use that information.""",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Changes to this Privacy Policy",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Divider(),
                Text(
                  """We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.\n
We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the "Last updated" date at the top of this Privacy Policy.\n
You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page""",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Contact Us",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Divider(),
                Text(
                  "If you have any questions about this Privacy Policy, You can contact us:\nBy email: builtupengg@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Developed by MyStrugle",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
