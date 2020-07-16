ckage:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  ));

  class Home extends StatefulWidget {
    @override
      _HomeState createState() => _HomeState();
      }

      class _HomeState extends State<Home> {
        @override
	  Widget build(BuildContext context) {
	      final items = List<String>.generate(10000, (i) => "Item $i");
	          return Scaffold(
		        appBar: AppBar(
			        title: Text('Items'),
				        centerTitle: true,
					        backgroundColor: Colors.lightGreen,
						      ),
						            body: ListView.builder(
							            itemCount: items.length,
								            itemBuilder: (context, index) {
									              return ListTile(
										                    title: Text('${items[index]}'),

												              );
													              },
														            ),


															            floatingActionButton: FloatingActionButton(
																            onPressed: () {},
																	            child: Text('Add items'),
																		            backgroundColor: Colors.lightGreen,
																			          ),
																				      );

																				        }
																					}
																					
