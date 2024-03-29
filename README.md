[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.flutter-io.cn/packages/lint)

# moony_app

The Moony dating application

## Build variant

(For ios please check flutter_flavorizr package readme and uncomment ios option in pubspec.yaml)
To generate variant (only one time necessary): flutter pub run flutter_flavorizr

For run mock: flutter run --flavor mock -t lib/main-mock.dart
For run staging: flutter run --flavor staging -t lib/main-staging.dart
For run prod: flutter run --flavor prod -t lib/main-prod.dart

## Lint check

Run command  "dart analyze" before commit

## Generate doc

Install Dart doc: "pub global activate dartdoc"
Go to directory and execute command "dartdoc"

## Native configuration

Execute command:
- to generate launcher icons: flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons.yaml

## Start build_runner code generation
flutter packages pub run build_runner build

## Dev register in firebase

- cd android
- gradlew signinReport
- Copy SHA 1 at the beginning of the result
- Paste on Firebase -> Paramètre -> Paramètres généraux

## Architecture overview
- App should use Domain Driven Development principles (presentation, application, domain, infrastructure) refers to this link https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/
- App should use MaterialApp widget for both Android and iOS. No need to look native on both platforms (no need CupertinoApp)
- Navigator 2.0 and GetX should be used, no additional libraries for navigation
- State management and dependency injection should be done with GetX or Riverpod
- Unit tests

For this project, I used the package by feature approach for the following reasons:

- Higher Modularity
Package-by-feature has packages with high cohesion, high modularity, and low coupling between packages.

- Easier Code Navigation
Maintenance programmers need to do a lot less searching for items, since all items needed for a given task are usually in the same directory. Some tools that encourage package-by-layer use package naming conventions to ease the problem of tedious code navigation. However, package-by-feature transcends the need for such conventions in the first place, by greatly reducing the need to navigate between directories.

- Higher Level of Abstraction
Staying at a high level of abstraction is one of programming's guiding principles of lasting value. It makes it easier to think about a problem, and emphasizes fundamental services over implementation details. As a direct benefit of being at a high level of abstraction, the application becomes more self-documenting: the overall size of the application is communicated by the number of packages, and the basic features are communicated by the package names. The fundamental flaw with package-by-layer style, on the other hand, is that it puts implementation details ahead of high level abstractions - which is backwards.

- Separates Both Features and Layers
The package-by-feature style still honors the idea of separating layers, but that separation is implemented using separate classes. The package-by-layer style, on the other hand, implements that separation using both separate classes and separate packages, which doesn't seem necessary or desirable.

- Minimizes Scope
Minimizing scope is another guiding principle of lasting value. Here, package-by-feature allows some classes to decrease their scope from public to package-private. This is a significant change, and will help to minimize ripple effects. The package-by-layer style, on the other hand, effectively abandons package-private scope, and forces you to implement nearly all items as public. This is a fundamental flaw, since it doesn't allow you to minimize ripple effects by keeping secrets.

- Better Growth Style
In the package-by-feature style, the number of classes within each package remains limited to the items related to a specific feature. If a package becomes too large, it may be refactored in a natural way into two or more packages. The package-by-layer style, on the other hand, is monolithic. As an application grows in size, the number of packages remains roughly the same, while the number of classes in each package will increase without bound.

## Sources: 

- Package by layers vs by features : https://phauer.com/2020/package-by-feature/ and http://www.javapractices.com/topic/TopicAction.do?Id=205
- Uncle bob screaming architecture: https://levelup.gitconnected.com/what-is-screaming-architecture-f7c327af9bb2
- Modular patterns: https://hackernoon.com/applying-clean-architecture-on-web-application-with-modular-pattern-7b11f1b89011
- Package by features with bounded contexts: https://reflectoring.io/java-components-clean-boundaries/ <3
- 5 most populars package structures: https://www.techyourchance.com/popular-package-structures/ <3

```yaml

# All the common, global and shared material and configuration
/common
    # Our global (shared) data sources, device apis services...
    /services
        /example_service
            - service_abstract.dart
            - service_impl.dart
    # Application configuration
    /application
        # Dependency injection loader (will rely on feature di module)
        - app_binding.dart
        # Navigation configuration (will rely on feature router)
        - app_router.dart
        # Main app widget
        - app_widget.dart
    # Dependencies injection configuration
    /di
        # Common di
        - module.dart
    # Common resources class
    /resources
        # Asset constants (images and fonts paths)
        - assets.dart
        # Strings constants for name, messages or descriptions
        - strings.dart
        # Themes and colors constants
        - themes.dart
    # Common data feature
    /data
        /feature1
        /feature2
    # Common domain feature
    /domain
        /feature1
        /feature2
    # Common presentation feature
    /presentation
        /feature1
        /feature2
    # Abstract extendable toolbox
    /base
        # Common reusable widgets
        /widgets
            # Reusable widget
            - widget1.dart
        # Common reusable domain objects
        /domain
            /model
                # Entity as of Clean architecture / DDD, all entities should inherit from it
                - entity.dart
                # Value object as of Clean architecture / DDD, all VO should inherit from it
                - value_object.dart
            /usecase
                # Base use case classes to use in features
                - usecase.dart
    # Utilities toolbox
    /util
        # Custom logger
        - logger.dart
# Directory that regroups all the features of the application
/features
    # Feature package corresponding to an epic
    /feature1
        # Directory responsible for containing everything related to external services like databases, remote services, device apis, data providers  of a feature
        /data
            # For local data source
            /local
                - model.dart
                # Model mapper to convert api object to data model and vise versa
                - mapper.dart
                - data_source.dart
            # For remote data source
            /remote
                - model.dart
                # Model mapper to convert api object to data model and vise versa
                - mapper.dart
                - data_source.dart
            # Implement repository interface and manage data sources
            /repository
                - repository_impl.dart
                # Model mapper to convert data object to entity and vise versa
                - mapper.dart
        # The enterprise business rules that contains entities, failures, validated objects and repositories abstractions of a feature
        /domain
            /model
                # The entity of the feature (User, Activity...)
                - entity.dart
                # The failures to handles exceptions
                - failures.dart
                # The value objects of a feature (Password, Emails, Date...), does not contains ids
                - value_object.dart
            # The abstraction part of the repository to return either a failure or an entity the the above layer
            /repository
                - repository_abstract.dart
            # The application business rules directory, contains use cases of a feature
            /usecase
              - usecase1.dart
              - usecase2.dart
        # Directory responsible for containing pages, widgets, viewmodels of a feature
        - /presentation
            # Feature presentation page
            - page.dart
            # Feature presentation widget
            - widget.dart
            # Feature presentation viewmodel
            - controller.dart
            # Feature presentation dependencies to inject (For Getx router)
            - bindings.dart
            # Model mapper to convert entity to ui model and vise versa
            - mapper.dart
        # Directory that contains di module
        - /di
            - module.dart
        # Directory that contains resources of the feature
        - /resources
            # Contains router configuration
            - router.dart
            # Asset constants (images and fonts paths)
            - assets.dart
            # Strings constants for name, messages or descriptions
            - strings.dart
            # Can include some database or configuration object for example:
            - database.json
# main file to initialize the application
- main.dart

```

