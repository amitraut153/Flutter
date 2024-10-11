import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class CourseInfo {
  String? courseName;
  String? university;
  String? text;
  String? buttopnText1;
  String? buttopnText2;

  CourseInfo(String mycourseName, String myuniversity, String mytext,
      String mybuttopnText1, String mybuttopnText2) {
    courseName = mycourseName;
    university = myuniversity;
    text = mytext;
    buttopnText1 = mybuttopnText1;
    buttopnText2 = mybuttopnText2;
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int selectiveInx = -1;
  int selectedCourseIndex = 0;

  List names = ["Data Science", "Machine learning", "Apache Spark", "amit"];

  List<CourseInfo> courseData = [
    CourseInfo(
        "Data Science",
        "Harvard University",
        "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
        "Data Science",
        "Machine Learning"),
    CourseInfo(
        "AI & ML",
        "Harvard University",
        "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
        "Machine Learning",
        "Decision Tree"),
    CourseInfo(
        "Big Data",
        "Harvard University",
        "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
        "Big Data",
        "Apache Spark"),
    CourseInfo(
        "DevOps",
        "Harvard University",
        "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
        "Docker",
        "Kubernetes"),
  ];
  List<CourseInfo> courseData2 = [
    CourseInfo(
        "MAchine Science",
        "Harvard University",
        "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
        "Data Science",
        "Machine Learning"),
    CourseInfo(
        "Prasad ML",
        "Harvard University",
        "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
        "Machine Learning",
        "Decision Tree"),
    CourseInfo(
        "Amiat Data",
        "Harvard University",
        "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
        "Big Data",
        "Apache Spark"),
    CourseInfo(
        "DevOps",
        "Harvard University",
        "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
        "Docker",
        "Kubernetes"),
  ];

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    List subjet = [courseData, courseData2];
    List temp = subjet[selectedCourseIndex];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text(
            "Recommended",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 91, 135, 1),
            ),
          ),
          centerTitle: true,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(5.0),
            child: Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Start a new Career",
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: sh * 0.085,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: names.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    selectiveInx = index;
                                    selectedCourseIndex = index;
                                    setState(() {});
                                  },
                                  borderRadius: BorderRadius.circular(50),
                                  child: Ink(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),

                                      color: (index == selectiveInx)
                                          ? const Color.fromARGB(
                                              255, 0, 91, 135)
                                          : const Color.fromARGB(
                                              255, 224, 235, 239),

                                      // color:const Color.fromARGB(255, 0, 91, 135),
                                    ),
                                    child: Text(
                                      names[index],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: (index == selectiveInx)
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 0, 91, 135),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: sh - sh * 0.085 - 120,
                  child: ListView.builder(
                      itemCount: temp.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.195,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 243, 244),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 130,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      child: Image.asset(
                                        "assets/image.jpg",
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          temp[index].courseName!,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          courseData[index].university!,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          temp[index].text!,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const Spacer(),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 25,
                                                width: 90,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 219, 232, 237),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Text(
                                                  temp[index].buttopnText1!,
                                                  style: const TextStyle(
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 25,
                                                width: 90,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 219, 232, 237),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Text(
                                                  temp[index].buttopnText2!,
                                                  style: const TextStyle(
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
