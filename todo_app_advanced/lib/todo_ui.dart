import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import './todo_model.dart';

class TodoUi extends StatefulWidget {
  const TodoUi({super.key});

  @override
  State<TodoUi> createState() => _TodoUiState();
}

class _TodoUiState extends State<TodoUi> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  String? titleText;
  String? descText;
  String? dateText;

  List<TodoModel> todoTasks = [
    TodoModel(
      title: "Flutter",
      description: "Dart, Widgets,OOp,row,column",
      date: "20 oct 2024",
    )
  ];

  void submit(bool doEdit, [TodoModel? todoObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (doEdit) {
        todoObj!.title = titleController.text;
        todoObj.description = descController.text;
        todoObj.date = dateController.text;
        Navigator.of(context).pop();
        clearControllers();
      } else {
        todoTasks.add(
          TodoModel(
            title: titleController.text,
            description: descController.text,
            date: dateController.text,
          ),
        );
        Navigator.of(context).pop();
        clearControllers();
      }
    }
    setState(() {});
  }

  void clearControllers() {
    titleController.clear();
    descController.clear();
    dateController.clear();
  }

  void showMyBottomSheet(bool doEdit, [TodoModel? todoObj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            top: 13.0,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  textAlign: TextAlign.start,
                  'Create To-Do',
                  style: GoogleFonts.quicksand(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Title",
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(89, 57, 241, 1),
                ),
              ),
              TextField(
                controller: titleController,
                style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 0.7)),
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(
                        top: 14, left: 15, right: 45, bottom: 13),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Description",
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(89, 57, 241, 1),
                ),
              ),
              TextField(
                controller: descController,
                maxLines: 3,
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 0.7),
                ),
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 14, left: 15, right: 45, bottom: 13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Date",
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(89, 57, 241, 1),
                ),
              ),
              TextField(
                controller: dateController,
                readOnly: true,
                style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 0.7)),
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.calendar_month),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2024),
                    lastDate: DateTime(2025),
                  );
                  String formattedDate = DateFormat.yMMMd().format(pickedDate!);
                  setState(() {
                    dateController.text = formattedDate;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (doEdit == true) {
                    submit(true, todoObj);
                  } else {
                    submit(false);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(89, 57, 241, 1),
                    ),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.inter(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45.0, left: 29),
            child: Column(
              children: [
                Text(
                  "Good Morning",
                  style: GoogleFonts.quicksand(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Text(
                  "Core2Web",
                  style: GoogleFonts.quicksand(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 41,
          ),
          Expanded(
            child: Container(
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      "CREATE TODO LIST",
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: ListView.builder(
                          itemCount: todoTasks.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Slidable(
                              // enabled: false,
                              endActionPane: ActionPane(
                                extentRatio: 0.19,
                                // dismissible: DismissiblePane(onDismissed: () {}),
                                motion: const ScrollMotion(),
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          titleController.text =
                                              todoTasks[index].title;
                                          descController.text =
                                              todoTasks[index].description;
                                          dateController.text =
                                              todoTasks[index].date;

                                          showMyBottomSheet(
                                            true,
                                            todoTasks[index],
                                          );

                                          setState(() {});
                                        },
                                        child: Container(
                                          height: 32,
                                          width: 32,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Color.fromRGBO(89, 57, 241, 1),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 10,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.1),
                                              )
                                            ],
                                          ),
                                          child: const Icon(
                                            Icons.edit_outlined,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 14,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          todoTasks.remove(todoTasks[index]);
                                          setState(() {});
                                        },
                                        child: Container(
                                          height: 32,
                                          width: 32,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Color.fromRGBO(89, 57, 241, 1),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 10,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.1),
                                              )
                                            ],
                                          ),
                                          child: const Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              child: Card(
                                elevation: 5,
                                // Removes the border radius
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12.0,
                                      bottom: 11,
                                      left: 16,
                                      right: 35),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 52,
                                        width: 52,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(217, 217, 217, 1),
                                        ),
                                        child: Image.asset(
                                          "assets/images/gallary.png",
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              todoTasks[index].title,
                                              style: GoogleFonts.inter(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            SizedBox(
                                              width: 240,
                                              height: 34,
                                              child: Text(
                                                todoTasks[index].description,
                                                style: GoogleFonts.inter(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 0.7),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              todoTasks[index].date,
                                              style: GoogleFonts.inter(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          showMyBottomSheet(false);
        },
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        child: const Icon(
          Icons.add_outlined,
          color: Color.fromRGBO(255, 255, 255, 1),
          size: 40,
        ),
      ),
    );
  }
}
