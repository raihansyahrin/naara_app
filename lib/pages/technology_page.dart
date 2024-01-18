import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/models/technology_model/technology_model.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TechnologyPage extends StatefulWidget {
  const TechnologyPage({Key? key});

  @override
  State<TechnologyPage> createState() => _TechnologyPageState();
}

class _TechnologyPageState extends State<TechnologyPage> {
  List<TechnologyModel> technology = [];

  void initModel() {
    technology = TechnologyModel.getTechnology();
  }

  @override
  Widget build(BuildContext context) {
    initModel();
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Naara Technology', // Ganti dengan teks yang diinginkan
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: MasonryGridView.builder(
                        // physics: const NeverScrollableScrollPhysics(),
                        primary: false,
                        itemCount: technology.length,
                        gridDelegate:
                            const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      technology[index].photo,
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            technology[index].title,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              height: 1,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:hackfest2024_naara/models/technology_model/technology_model.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class TechnologyPage extends StatefulWidget {
//   const TechnologyPage({Key? key});

//   @override
//   State<TechnologyPage> createState() => _TechnologyPageState();
// }

// class _TechnologyPageState extends State<TechnologyPage> {
//   List<TechnologyModel> technology = [];

//   void initModel() {
//     technology = TechnologyModel.getTechnology();
//   }

//   @override
//   Widget build(BuildContext context) {
//     initModel();
//     return Scaffold(
//       body: SafeArea(
//         child: LayoutBuilder(
//           builder: (context, constraints) {
//             return SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Container(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         'Naara Technology', // Ganti dengan teks yang diinginkan
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Flexible(
//                     fit: FlexFit.loose,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: MasonryGridView.builder(
//                         // physics: const NeverScrollableScrollPhysics(),
//                         primary: false,
//                         itemCount: technology.length,
//                         gridDelegate:
//                             const SliverSimpleGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                         ),
//                         itemBuilder: (context, index) {
//                           return GestureDetector(
//                             child: Container(
//                               padding: EdgeInsets.all(5),
//                               child: Stack(
//                                 children: [
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.circular(12),
//                                     child: Image.asset(
//                                       technology[index].photo,
//                                     ),
//                                   ),
//                                   Positioned(
//                                     left: 0,
//                                     bottom: 0,
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(10.0),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             technology[index].title,
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.w700,
//                                               height: 1,
//                                             ),
//                                           ),
//                                           SizedBox(height: 5),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
