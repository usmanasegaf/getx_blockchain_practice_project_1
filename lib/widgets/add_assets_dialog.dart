import 'package:flutter/material.dart';

class AddAssetsDialog extends StatelessWidget {
  const AddAssetsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.40,
          width: MediaQuery.sizeOf(context).width * 0.80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
            color: Colors.white,
          ),
          child: _buildUI(),
        ),
      ),
    );
  }

  Widget _buildUI() {
    return Column(
      children: [],
    );
  }
}
