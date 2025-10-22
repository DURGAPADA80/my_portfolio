import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //title
          const Text(
            "Get in Touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),

          //

          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= desktopWidth) {
                  return buildContactFielsDesktop();
                }
                //elae

                return buildContactFielsMobaile();
              },
            ),
          ),
          const SizedBox(height: 15),

          // massage

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: const CustomTextField(
              hintText: "Your message",
              maxLines: 16,
            ),
          ),

          const SizedBox(height: 15),

          // send buttom
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.darkTeal,
                  foregroundColor: CustomColor.whitePrimary,
                ),
                child: const Text("Get In Touch"),
              ),
            ),
          ),
          const SizedBox(height: 30),

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15),
          //sns icon button links
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.github]);
                },
                child: Image.asset("assets/github.png", width: 25),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.linkedIn]);
                },
                child: Image.asset("assets/linkedin.png", width: 25),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.telegram]);
                },
                child: Image.asset("assets/telegram.png", width: 25),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.facebook]);
                },
                child: Image.asset("assets/facebook.png", width: 25),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.instagram]);
                },
                child: Image.asset("assets/instagram.png", width: 25),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildContactFielsDesktop() {
    return const Row(
      children: [
        //name

        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),
        SizedBox(width: 15),

        // email

        Flexible(
          child: CustomTextField(
            hintText: "Your Email",
          ),
        ),
        SizedBox(width: 15),

        //mobail number

        Flexible(
          child: CustomTextField(
            hintText: "Your mobail Number",
          ),
        ),
      ],
    );
  }

  Column buildContactFielsMobaile() {
    return const Column(
      children: [
        //name

        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),
        SizedBox(height: 10),

        // email

        Flexible(
          child: CustomTextField(
            hintText: "Your Email",
          ),
        ),
        SizedBox(height: 10),

        //mobail number

        Flexible(
          child: CustomTextField(
            hintText: "Your mobail Number",
          ),
        ),
      ],
    );
  }
}
