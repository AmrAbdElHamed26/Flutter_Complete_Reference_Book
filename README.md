# State management

### A state is information that can be read when the widget is built and might change or modified over a lifetime of the app. If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets. The setState() function allows us to set the properties of the state object that triggers a redraw of the UI.<br /><br />




![image](https://user-images.githubusercontent.com/86882938/220777749-494c23e5-4427-4bfe-8cbd-d4cef1ef0f43.png)

### <br /><br />There are 3 different state management strategies:
#### 1. Updating the UI using setState
#### 2. Passing the state around the widget tree, with the help of the Provider widget,
#### 3. Alternatives to setState(), implemented with the help of the BlocBuilder widget. <br /><br /><br />





# 1-Updating the UI using setState
## It’s the simplest way of handling the state of a widget but you should really avoid this approach <b><i>because it mixes UI logic with business logic.</i></b><br/><br/>

``` flutter 
setState(() {

     // My New State 
     
     }
);
```

## With SetState :
### -it handles the UI logic, which is responsible of drawing widgets
### -it handles the business logic, which takes care of _counter
### -it handles the state of the app, which is managed by setStat</br></br>


![image](https://user-images.githubusercontent.com/86882938/220786887-4baed22a-7474-4c88-bdcb-7b424248e5e6.png)


# 2-Bloc pattern (<b>Business Logic Components</b>) and Cubit
## <b>Bloc</b> is the best and simple way to do state management and is a design pattern created by Google to help separate business logic from the award layer and authorize a developer to exploit code more efficiently. </br>

## <b>Cubit</b> is a minimal version or a subset of the BLoC design pattern that simplifies the way we manage the state of an application. To do so, it substitutes the use of events (used in Bloc) with functions that rebuild the UI by emitting different states on a stream.

### <i>A Cubit is similar to Bloc but has no notion of events and relies on methods to emit new states. Every Cubit requires an initial state which will be the state of the Cubit before emit has been called. The current state of a Cubit can be accessed via the state-getter.</i></br></br>

![image](https://user-images.githubusercontent.com/86882938/220791355-48f0c1de-4c92-4d95-8bbe-8c2e469e9746.png)

# </br></br>You Can Use this package as a library 
## Run this command:


## With Flutter :
``` flutter 
flutter pub add flutter_bloc
```

# Observer class
##  The Observer class is a widget that listens to changes in an Observable, and rebuilds whenever the Observable changes.</br></br>

![image](https://user-images.githubusercontent.com/86882938/220792423-e65f4ed4-d184-463d-8fd2-019e6aa24214.png)

# </br><b>Code For BlocObserver :</b>
``` flutter
import 'package:bloc/bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('onEvent -- ${bloc.runtimeType}, $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('onTransition -- ${bloc.runtimeType}, $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}
```

# And Before runApp() Sue This Line :

``` flutter 
  Bloc.observer = MyBlocObserver();

```

## Now Any change happen in The States Will Be Clear For You .


<i><b>Finaly You Can See A Complete Example in This Simple Project 
