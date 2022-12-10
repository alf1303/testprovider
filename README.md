Provider demo

1) Add dependency:
    flutter pub add provider

2) Create class Provider (provider1.dart). It uses singleton pattern. You can create it instance in any part of project and get access to its variables and methods.
Basically it contains states, related to some functionality of project and methods for changing them, then call notifyAll() method to update states in desired widgets (listeners)

3) Wrap the top of project (before MaterialApp widget) with MultiProvider widget, fill its parameter <providers>, add your top app widget as child (main.dart)

4) Wrap needed widgets of project with <Consumer> widget, providing needed provider class name. Use ubilder parameter <model_provider1> to access provider state (variables and methods)
