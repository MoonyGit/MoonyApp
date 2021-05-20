[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.flutter-io.cn/packages/lint)

# moony_app

The Moony dating application

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

## Architecture overview
- App should use Domain Driven Development principles (presentation, application, domain, infrastructure) refers to this link https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/
- App should use MaterialApp widget for both Android and iOS. No need to look native on both platforms (no need CupertinoApp)
- Navigator 2.0 and GetX should be used, no additional libraries for navigation
- State management and dependency injection should be done with GetX or Riverpod
- Unit tests

For this project, I used the following folder structure:

```yaml
- /infrastructure
# Directory responsible for containing everything related to external services like databases, remote services, device apis, data providers
    - /services
    # Our global (shared) data sources, device apis services, remote configuration...
        - /example_service.dart
            - service_abstract.dart
            - service_impl.dart
    - /feature
    # Our feature related data sources and repository
        - model.dart
        - data_source.dart
        - repository_impl.dart
- /domain
# The enterprise business rules that contains entities, failures, validated objects and repositories abstractions
    - /common
    # Handle common rules
        - common_entity.dart
        - common_failure.dart
        - common_validated_entity.dart
        - common_repository_abstract.dart
    - /feature
    # Feature enterprise business rule
        - entity.dart
        # The entity of the feature (User, Activity...)
        - failures.dart
        # The failures to handles exceptions
        - validated_entity.dart
        # The enterprise business rules to ensure the validated data state of entities
        - repository_abstract.dart
        # The abstraction part of the repository to return either a failure or an entity the the above layer
- /application
# The application business rules directory, contains use cases, router
    - /common
    # Related to common business logic like router
        - app_router.dart
        # Navigation class will provide all the routes of the application
        - app_binding.dart
        # Application global dependencies
    - /feature
    # Feature application business rules
        - usecase1.dart
        - usecase2.dart

- /presentation
# Directory responsible for containing pages, widgets, viewmodels and resources
    - /common
    # Our common material used across all features
        - /resources
        # Common resources class
            - assets.dart
            # Asset constants (images and fonts paths)
            - strings.dart
            # Strings constants for name, messages or descriptions
            - themes.dart
            # Themes and colors constants
        - /widgets
        # Common reusable widgets
        - app.dart
        # Main application
    - /feature
    # Feature presentation
        - page.dart
        # Feature presentation page
        - widget.dart
        # Feature presentation widget
        - controller.dart
        # Feature presentation viewmodel
        - bindings.dart
        # Feature presentation dependencies to inject

- main.dart
# main file to initialize the application

```