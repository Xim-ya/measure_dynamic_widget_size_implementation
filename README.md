<h1 align="center">Getting the Dynamic Size of Widgets</h1>
<p align="center"><img src="https://velog.velcdn.com/images/ximya_hf/post/82513c2d-fb86-4df1-93e8-27956d60740a/image.png"/></p>
<p align="center">This project demonstrates how to measure the rendering size of variable widgets based on device size or the size of child widgets using the <a href="https://pub.dev/packages/measure_size_builder/">MeasureSizeBuilder Package</a>.</p>

<br/>
<br/>

<p align="center">
You can check out the example running on the following site.</p>
<p align="center">
<a href="https://measure-size-builder-example.netlify.app/"> MeasureSizeBuilder Example </a>
</p>




## Code 

### Return the widget you want to measure inside MeasureSizeBuilder


```dart
MeasureSizeBuilder(  
  builder: (context, size) {  
    log('height : ${size.hieght} width: ${size.width}');  
    return Container(  
        child : SomeWidget(),  
    );  
  },  
)
```

The usage is straightforward. Wrap the widget you want to measure with MeasureSizeBuilder. The rendered size of the widget is returned as an object of type `Size`. Please note that the initial value of Size is `Size(0,0)`. It returns the precise rendering size of the widget being measured after the widget has finished rendering.

<br/>


### Handle UI conditionally based on widget size

```dart
MeasureSizeBuilder(  
  builder: (context, size) {  
    return Container(  
      color: size.height > 300 ? Colors.red : Colors.blue,  
      child: SomeWidget(),  
    );  
  },  
)
```

Widgets returned inside MeasureSizeBuilder can access the `size` value to handle UI conditionally.

<br/>

### Measure the size of widgets that change dynamically

```dart
MeasureSizeBuilder(  
  sensitivity: Duration.zero, // <-- Set Zero Duration
  builder: (context, size) {  
    log('Widget Size that changes dynamically : $size');  
    return const ExpansionTile(  
      title: Text('ExpansionTile'),  
      subtitle: Text('Trailing expansion arrow icon'),  
      children: <Widget>[  
        ListTile(title: Text('This is tile number 1')),  
      ],  
    );  
  },  
)
```

Even when the size of widgets like ExpansionTile changes dynamically, MeasureSizeBuilder detects this and returns the changed size. You can control how quickly the widget size changes are detected using the `sensitivity` property. The shorter the Duration value for sensitivity, the more frequently the widget size changes are returned. However, note that with frequent size changes, the widget inside MeasureSizeBuilder will be re-rendered each time. <b>If you only need the final size of the widget without real-time access to the size values, provide a generous duration.<br/>




<br/>

For more detailed information, please refer to my blog post titled <a href="https://medium.com/@ximya/organize-your-global-providers-in-flutter-riverpod-with-mixin-class-562ae2aa3376">"Organize Your “Global” Providers in Flutter Riverpod with Mixin Class"<a/>