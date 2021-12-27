import 'package:flutter/material.dart';
import 'package:stepupdev/models/tech_model.dart';
import 'package:stepupdev/widgets/techs_grid_tile.dart';

class TechScreen extends StatefulWidget {
  @override
  _TechScreenState createState() => _TechScreenState();
}

class _TechScreenState extends State<TechScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Technologies'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 75,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 4),
                  itemCount: TechModel.techs.length,
                  itemBuilder: (context, index) {
                    return TechsTile(tech: TechModel.techs[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
