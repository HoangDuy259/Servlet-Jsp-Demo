<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StudentMS - Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500&family=DM+Sans:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: 'DM Sans', sans-serif;
            background: #ffffff;
            color: #1a1a1a;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* NAV */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1.5rem 3rem;
            border-bottom: 0.5px solid #e0e0e0;
        }

        .nav-logo {
            font-family: 'Playfair Display', serif;
            font-size: 20px;
            font-weight: 500;
            color: #1a1a1a;
            letter-spacing: -0.5px;
        }

        .nav-links {
            display: flex;
            gap: 2rem;
        }

        .nav-links a {
            font-size: 14px;
            color: #666;
            text-decoration: none;
            transition: color 0.2s;
        }

        .nav-links a:hover { color: #1a1a1a; }

        /* MAIN GRID */
        .main {
            flex: 1;
            display: grid;
            grid-template-columns: 1fr 1fr;
        }

        /* LEFT */
        .left {
            padding: 5rem 3rem;
            display: flex;
            flex-direction: column;
            justify-content: center;
            border-right: 0.5px solid #e0e0e0;
        }

        .tag {
            font-size: 11px;
            font-weight: 500;
            letter-spacing: 2px;
            color: #888;
            text-transform: uppercase;
            margin-bottom: 2rem;
        }

        h1 {
            font-family: 'Playfair Display', serif;
            font-size: 52px;
            font-weight: 400;
            line-height: 1.1;
            color: #1a1a1a;
            margin-bottom: 1.5rem;
        }

        h1 em {
            font-style: italic;
            color: #534AB7;
        }

        .desc {
            font-size: 16px;
            color: #666;
            line-height: 1.7;
            max-width: 420px;
            margin-bottom: 3rem;
        }

        .actions {
            display: flex;
            gap: 1rem;
            align-items: center;
        }

        .btn-primary {
            font-family: 'DM Sans', sans-serif;
            font-size: 14px;
            font-weight: 500;
            padding: 12px 28px;
            background: #534AB7;
            color: #EEEDFE;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            transition: background 0.2s;
        }

        .btn-primary:hover { background: #3C3489; }

        .btn-secondary {
            font-family: 'DM Sans', sans-serif;
            font-size: 14px;
            color: #666;
            background: none;
            border: 0.5px solid #ccc;
            padding: 12px 28px;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.2s;
        }

        .btn-secondary:hover { background: #f5f5f5; }

        /* RIGHT */
        .right {
            padding: 5rem 3rem;
            display: flex;
            flex-direction: column;
            justify-content: center;
            gap: 1rem;
        }

        .stat-card {
            background: #f8f8f8;
            border-radius: 12px;
            padding: 1.5rem;
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .stat-icon {
            width: 40px;
            height: 40px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 16px;
        }

        .stat-icon.purple { background: #EEEDFE; }
        .stat-icon.teal   { background: #E1F5EE; }
        .stat-icon.amber  { background: #FAEEDA; }

        .stat-label {
            font-size: 12px;
            color: #888;
        }

        .stat-value {
            font-family: 'Playfair Display', serif;
            font-size: 24px;
            font-weight: 500;
            color: #1a1a1a;
        }

        /* FOOTER */
        footer {
            padding: 1.5rem 3rem;
            border-top: 0.5px solid #e0e0e0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        footer p {
            font-size: 12px;
            color: #aaa;
        }
    </style>
</head>
<body>

<nav>
    <div class="nav-logo">StudentMS</div>
    <div class="nav-links">
        <a href="students">Dashboard</a>
        <a href="students">Students</a>
        <a href="add">Add Student</a>
    </div>
</nav>

<div class="main">

    <div class="left">
        <div class="tag">Student Management System</div>
        <h1>Manage your <em>students</em> with ease</h1>
        <p class="desc">
            A simple and clean system to add, view, edit, and remove
            student records — all stored in memory, no database needed.
        </p>
        <div class="actions">
            <a href="students" class="btn-primary">View all students</a>
            <a href="add" class="btn-secondary">Add student</a>
        </div>
    </div>

    <div class="right">
        <div class="stat-card">
            <div class="stat-icon purple">👤</div>
            <div>
                <div class="stat-label">Total students</div>
                <div class="stat-value">24</div>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon teal">✏️</div>
            <div>
                <div class="stat-label">Recently added</div>
                <div class="stat-value">3 today</div>
            </div>
        </div>
        <div class="stat-card">
            <div class="stat-icon amber">📋</div>
            <div>
                <div class="stat-label">Last updated</div>
                <div class="stat-value">Just now</div>
            </div>
        </div>
    </div>

</div>

<footer>
    <p>StudentMS — Java Servlet + JSP</p>
    <p>Running on Tomcat</p>
</footer>

</body>
</html>
