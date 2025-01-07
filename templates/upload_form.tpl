<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homebrew Generator v0.1</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f3f4f6;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 100%;
            max-width: 500px;
            text-align: center;
        }

        .header {
            font-size: 28px;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 20px;
        }

        .upload-box {
            padding: 20px;
            border: 2px dashed #4A90E2;
            border-radius: 8px;
            background-color: #f9f9f9;
            transition: background-color 0.3s;
        }

        .upload-box:hover {
            background-color: #e6f0ff;
        }

        .upload-box input[type="file"] {
            font-size: 16px;
            margin-top: 10px;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            width: 100%;
            background-color: #fff;
            transition: border-color 0.3s;
        }

        .upload-box input[type="file"]:hover {
            border-color: #4A90E2;
        }

        .submit-btn {
            margin-top: 20px;
            padding: 12px 30px;
            background-color: #4A90E2;
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #357ABD;
        }

        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #888;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="header">
            Homebrew Generator v0.1
        </div>

        <div class="upload-box">
            <p>Upload your CSV file to generate your custom adventure.</p>
            <form action="/upload" method="post" enctype="multipart/form-data">
                <input type="file" name="csv_file" id="csv_file" required />
                <button class="submit-btn" type="submit">Generate Document</button>
            </form>
        </div>

        <div class="footer">
            <p>By Andrew Liguori</p>
        </div>
    </div>

</body>
</html>
