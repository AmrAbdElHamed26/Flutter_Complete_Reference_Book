import 'package:chapter11/bloc/counter_cubit.dart';
import 'package:chapter11/bloc/counter_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>CounterCubit(CounterIncrementState()),
        child: BlocConsumer<CounterCubit , CounterStates>(
          builder: (BuildContext context, state)=>Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text('Points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team E',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).incrementTeam(1,1);

                            },
                            child: Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).incrementTeam(2,1);

                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).incrementTeam(3,1);

                            },
                            child: Text(
                              'Add 3 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).incrementTeam(1,2);


                            },
                            child: Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).incrementTeam(2,2);

                            },
                            child: Text(
                              'Add 2 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).incrementTeam(3,2);

                            },
                            child: Text(
                              'Add 3 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),
                    primary: Colors.orange,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () {

                    BlocProvider.of<CounterCubit>(context).resetPoints();

                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          listener: (BuildContext context, Object? state) {  },
        ),
    );
  }
}
