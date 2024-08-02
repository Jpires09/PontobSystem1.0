# PontobSystem1.0

PontobSystem1.0 is a Ruby on Rails application designed to manage classes and groups for a fitness academy. The system helps organize schedules, display class information, and manage participants.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Models](#models)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

- **Class Management**: Create, edit, and delete classes.
- **Schedule Organization**: Display class schedules by day of the week and time.
- **Group Management**: Organize classes into groups (Turmas).
- **Dynamic Forms**: Use select fields for day of the week and modality.

## Installation

To get started with the project, follow these steps:

1. **Clone the repository:**

    ```sh
    git clone https://github.com/Jpires09/PontobSystem1.0.git
    cd PontobSystem1.0
    ```

2. **Install dependencies:**

    ```sh
    bundle install
    yarn install
    ```

3. **Set up the database:**

    ```sh
    rails db:create
    rails db:migrate
    ```

4. **Run the server:**

    ```sh
    rails server
    ```

## Usage

Once the server is running, you can access the application at `http://localhost:3000`. Use the navigation menu to manage products, employees, classes, clients, and groups.

### Home Page

The home page displays a table of class schedules with unique days of the week as columns and class times as rows.

### Creating a Class

To create a new class:

1. Navigate to the "Turmas" page.
2. Click on "New Turma".
3. Fill out the form with the class details.
4. Submit the form to save the class.

## Models

### Turma

- `dia_da_semana`: The day of the week for the class.
- `horario`: The time of the class.
- `faixa_etaria`: The age group for the class.
- `modalidade`: The modality of the class.
- `semanal_id`: Foreign key to the Semanal model.

### Semanal

- `id`: Primary key.
- `created_at`: Timestamp of record creation.
- `updated_at`: Timestamp of last update.

## Contributing

We welcome contributions to improve PontobSystem1.0! To contribute, please follow these steps:

1. **Fork the repository** on GitHub.
2. **Clone your fork** to your local machine:

    ```sh
    git clone https://github.com/Jpires09/PontobSystem1.0.git
    ```

3. **Create a new branch** for your feature or bugfix:

    ```sh
    git checkout -b my-feature-branch
    ```

4. **Make your changes**.
5. **Commit your changes**:

    ```sh
    git commit -am 'Add new feature'
    ```

6. **Push to your branch**:

    ```sh
    git push origin my-feature-branch
    ```

7. **Create a pull request** on GitHub.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For questions or suggestions, feel free to contact me at devjeancarlospires@gmail.com.

GitHub: [Jpires09](https://github.com/Jpires09)
