<!DOCTYPE html>
<html>

<head>
    <title>Welcome</title>
</head>

<body>
    <h2>Welcome {{ $name }}!</h2>

    <p>Your account has been created successfully.</p>

    <p>Please use the following login credentials:</p>
    <ul>
        <li><strong>Email:</strong> {{ $email }}</li>
        <li><strong>Password:</strong> {{ $password }}</li>
        </ul>

    <p>You can login at <a href="{{ route('login') }}">{{ route('login') }}</a></p>

    <p>Best regards,<br>Your Company Team</p>
</body>

</html>
