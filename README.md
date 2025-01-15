# Homebrew Adventure Generator

This is a lightweight web application built with the Bottle framework. It allows users to upload a CSV file and generate a Word document where each column's heading is used as a section title, and a random non-empty value from the column is added as content. This can create randomly-generated DND adventures with as many or few options as you'd like. 

## Features

- Upload CSV files through a web interface.
- Automatically generates a Word document (`.docx`) based on the uploaded CSV.
- Supports customizable templates for the web interface.

## Requirements

### Python Libraries
The program requires the following Python libraries:
- `os` (Standard Library)
- `random` (Standard Library)
- `pandas`
- `bottle`
- `python-docx`

You can install the required libraries using pip:
```bash
pip install pandas bottle python-docx
```

## Usage

1. **Run the Application**
   ```bash
   python app.py
   ```

2. **Access the Web Interface**
   Open your browser and go to `http://localhost:8080/`.

3. **Upload a CSV File**
   - Upload a CSV file using the provided form.
   - The application will generate a Word document and prompt you to download it.

## Folder Structure

- **`/uploads`**: Stores uploaded CSV files and generated Word documents.
- **`/templates`**: Contains HTML templates for the web interface.
- **`/static`**: Stores static files like CSS or images (if needed).

## Key Functions

### `generate_document(csv_file_path)`
Reads the uploaded CSV file, selects a random non-empty value from each column, and creates a Word document with column headings as sections.

### Routes
- **`/`**: Displays the file upload form.
- **`/upload`**: Handles CSV file uploads and initiates document generation.
- **`/static/<filename>`**: Serves static files, if any.

## Customization

### Templates
You can customize the HTML templates located in the `templates` directory to fit your needs.

### Static Files
Place CSS or image files in the `static` directory to enhance the application's appearance.

## Troubleshooting

- **File Encoding Issues**: Ensure your CSV files use the `cp1252` encoding. You can convert files using tools like Excel or LibreOffice if needed.
- **Permission Issues**: Ensure the `uploads` directory has the appropriate read/write permissions.

## License
This project is licensed under the MIT License. See `LICENSE` for details.

## Contributions
Feel free to open issues or submit pull requests to improve this application. Your feedback and contributions are welcome!
