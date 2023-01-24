import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, balance, code;
  final IconData icon;
  final Color _blackColor = const Color(0xFF1F2123);
  final bool isInverted;
  final int order;
  const CurrencyCard({
    super.key,
    required this.name,
    required this.balance,
    required this.code,
    required this.icon,
    required this.order,
    this.isInverted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
        0,
        order * (-20),
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        balance,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.25,
                child: Transform.translate(
                  offset: const Offset(
                    -5,
                    12,
                  ),
                  child: Icon(
                    icon,
                    size: 98,
                    color: isInverted ? _blackColor : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
