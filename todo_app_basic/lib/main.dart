import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:intl/intl.dart";
import './todo_model.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<TodoModel> todoTasks = [];
  List<dynamic> colorContainer = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
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

  void openBottomSheet(bool doEdit, [TodoModel? todoObj]) {
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
                  color: const Color.fromRGBO(0, 139, 148, 1),
                ),
              ),
              TextField(
                controller: titleController,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 0.7)),
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 14, left: 15, right: 45, bottom: 13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Description",
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 139, 148, 1),
                ),
              ),
              TextField(
                controller: descController,
                maxLines: 3,
                style: GoogleFonts.quicksand(
                  fontSize: 15,
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
                  color: const Color.fromRGBO(0, 139, 148, 1),
                ),
              ),
              TextField(
                controller: dateController,
                readOnly: true,
                style: const TextStyle(
                    fontSize: 15,
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
                      color: const Color.fromRGBO(0, 139, 148, 1),
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

  bool isDay = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      backgroundColor: (isDay)
          ? const Color.fromRGBO(255, 255, 255, 1)
          : const Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        backgroundColor: (isDay)
            ? const Color.fromRGBO(2, 167, 177, 1)
            : const Color.fromRGBO(0, 0, 0, 1),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isDay = !isDay;
                });
              },
              icon: (isDay)
                  ? const Icon(
                      Icons.brightness_3,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 25,
                    )
                  : const Icon(
                      Icons.sunny,
                      color: Color.fromRGBO(255, 255, 1, 1),
                      size: 25,
                    )),
        ],
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
          itemCount: todoTasks.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 6, right: 6, bottom: 5),
                      child: Column(
                        children: [
                          Container(
                            // height: 128,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: colorContainer[index % 4],
                              // Color.fromRGBO(1, 250, 232, 232),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, bottom: 12, left: 15),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 61,
                                        width: 61,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          child: Image.asset(
                                            "assets/images/gallary.png",
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 11,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 280,
                                              height: 20,
                                              child: Text(
                                                // "Lorem Ipsum is simply setting industry",
                                                todoTasks[index].title,
                                                style: GoogleFonts.quicksand(
                                                  fontSize: 12.5,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            SizedBox(
                                              width: 261,
                                              height: 50,
                                              child: Text(
                                                //Description
                                                todoTasks[index].description,
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 10.5,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 5, bottom: 5),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          child: Text(
                                            todoTasks[index].date,
                                            style:
                                                const TextStyle(fontSize: 10),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 225,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                titleController.text =
                                                    todoTasks[index].title;
                                                descController.text =
                                                    todoTasks[index]
                                                        .description;
                                                dateController.text =
                                                    todoTasks[index].date;

                                                openBottomSheet(
                                                  true,
                                                  todoTasks[index],
                                                );

                                                setState(() {});
                                              },
                                              child: const Icon(
                                                Icons.edit_outlined,
                                                size: 18,
                                                color: Color.fromRGBO(
                                                    0, 139, 148, 1),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                todoTasks
                                                    .remove(todoTasks[index]);
                                                setState(() {});
                                              },
                                              child: const Icon(
                                                Icons.delete_outline,
                                                size: 18,
                                                color: Color.fromRGBO(
                                                    0, 139, 148, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          // left: 20,
          bottom: 25,
        ),
        child: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            // backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
            backgroundColor:
                (isDay) ? const Color.fromRGBO(2, 167, 177, 1) : Colors.white,
            onPressed: () {
              openBottomSheet(false);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.add,
              color: (isDay) ? Color.fromRGBO(255, 255, 255, 1) : Colors.black,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
