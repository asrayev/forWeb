import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage("https://source.unsplash.com/random"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Assayer Rauf"),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              typeWidget(context, "PROFILE"),
                              IconTextWidget(Icons.location_on_rounded,
                                  "Personal Address", "Tashkent Uzbekistan"),
                              const SizedBox(
                                height: 30,
                              ),
                              IconTextWidget(Icons.email_outlined, "Email",
                                  "asrayevrauf1@gmail"),
                              const SizedBox(
                                height: 30,
                              ),
                              IconTextWidget(
                                  Icons.phone, "Mobile", "+998 (90) 022 83 25"),
                              const SizedBox(
                                height: 30,
                              ),
                              IconTextWidget(Icons.calendar_month_rounded,
                                  "Data of birth", "1 - June 2003 - year"),
                              const SizedBox(
                                height: 40,
                              ),
                              typeWidget(context, "SKILLS"),
                              const Text("- Flutter"),
                              const Text("- Dart"),
                              const Text("- Cubit / Bloc"),
                              const Text("- Git / GitHub"),
                              const Text("- Figma"),
                              const SizedBox(
                                height: 30,
                              ),
                              typeWidget(context, "LANGUAGE"),
                              const Text("- English"),
                              const Text("- Russian"),
                              const SizedBox(
                                height: 30,
                              ),
                              typeWidget(context, "HOBBIES"),
                              const Text("- Play football"),
                              const Text("- Swimming"),
                            ],
                          ),
                          myLineWidget(context),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.60,
                                  child: const Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nulla sapien, ornare eu tincidunt ut, consequat sit amet purus. Mauris mollis sit amet nisi id laoreet. Nunc vel porta sapien, sed placerat justo. Sed tempus urna nec lorem cursus auctor. Quisque euismod sagittis tortor, ut placerat nisl scelerisque ac. Cras aliquet, ligula vitae laoreet mattis, ipsum velit vestibulum erat, id eleifend nisi purus sit amet nisl. Donec cursus ultrices neque ut pharetra. Sed vehicula fringilla purus quis tempor. Vivamus in ullamcorper felis. Nam purus nunc, malesuada vitae nisi eget, ullamcorper bibendum leo.")),
                              ExpiranceWidget(
                                  context,
                                  Icons.shopping_bag_outlined,
                                  "Professional Expreriance"),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.60,
                                  child: const Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nulla sapien, ornare eu tincidunt ut, consequat sit amet purus. Mauris mollis sit amet nisi id laoreet. Nunc vel porta sapien, sed placerat justo. Sed tempus urna nec lorem cursus auctor. Quisque euismod sagittis tortor, ut placerat nisl scelerisque ac. Cras aliquet, ligula vitae laoreet mattis, ipsum velit vestibulum erat, id eleifend nisi purus sit amet nisl. Donec cursus ultrices neque ut pharetra. Sed vehicula fringilla purus quis tempor. Vivamus in ullamcorper felis. Nam purus nunc, malesuada vitae nisi eget, ullamcorper bibendum leo.")),
                              ExpiranceWidget(
                                  context,
                                  Icons.shopping_bag_outlined,
                                  "Professional Expreriance"),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.60,
                                  child: const Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nulla sapien, ornare eu tincidunt ut, consequat sit amet purus. Mauris mollis sit amet nisi id laoreet. Nunc vel porta sapien, sed placerat justo. Sed tempus urna nec lorem cursus auctor. Quisque euismod sagittis tortor, ut placerat nisl scelerisque ac. Cras aliquet, ligula vitae laoreet mattis, ipsum velit vestibulum erat, id eleifend nisi purus sit amet nisl. Donec cursus ultrices neque ut pharetra. Sed vehicula fringilla purus quis tempor. Vivamus in ullamcorper felis. Nam purus nunc, malesuada vitae nisi eget, ullamcorper bibendum leo.")),
                              ExpiranceWidget(
                                  context,
                                  Icons.shopping_bag_outlined,
                                  "Professional Expreriance"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row ExpiranceWidget(BuildContext context, IconData icon, String text) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 10,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          height: MediaQuery.of(context).size.height * 0.034,
          width: MediaQuery.of(context).size.width * 0.55,
          color: Colors.black,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Container myLineWidget(BuildContext context) => Container(
        margin: const EdgeInsets.only(right: 30, left: 30),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.001,
        color: Colors.black,
      );

  // ignore: non_constant_identifier_names
  Row IconTextWidget(IconData icon, String text1, String text2) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1),
            Text(text2),
          ],
        )
      ],
    );
  }

  Container typeWidget(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      height: MediaQuery.of(context).size.height * 0.034,
      width: MediaQuery.of(context).size.width * 0.18,
      color: Colors.black,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
