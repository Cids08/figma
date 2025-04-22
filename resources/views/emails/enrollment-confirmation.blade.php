// resources/views/emails/enrollment-confirmation.blade.php
<!DOCTYPE html>
<html>
<head>
    <style>
        body { font-family: Arial, sans-serif; line-height: 1.6; }
        .container { max-width: 600px; margin: 0 auto; padding: 20px; }
        .header { background-color: #136ad5; color: white; padding: 10px; text-align: center; }
        .content { padding: 20px; }
        .footer { font-size: 12px; color: #777; margin-top: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Enrollment Confirmation</h1>
        </div>
        <div class="content">
            <p>Dear {{ $enrollment->parentName }},</p>
            
            <p>Thank you for enrolling your child, {{ $enrollment->firstName }} {{ $enrollment->lastName }}, at San Roque Elementary School. We have received your enrollment application for Grade {{ $enrollment->gradeLevel }}.</p>
            
            <p><strong>Enrollment Details:</strong><br>
            Student Name: {{ $enrollment->firstName }} {{ $enrollment->middleName }} {{ $enrollment->lastName }}<br>
            Date of Birth: {{ date('F j, Y', strtotime($enrollment->dateOfBirth)) }}<br>
            Grade Level: {{ ucfirst($enrollment->gradeLevel) }}</p>
            
            <p><strong>Next Steps:</strong></p>
            <ol>
                <li>Please bring the original copies of the required documents to the school office within 7 days.</li>
                <li>Complete any pending requirements if marked during registration.</li>
                <li>Attend the orientation session (details will be sent separately).</li>
            </ol>
            
            <p>If you have any questions, please contact us at 09605519104 or email us at 113330@deped.gov.ph.</p>
            
            <p>Best regards,<br>
            San Roque Elementary School</p>
        </div>
        <div class="footer">
            <p>This is an automated message. Please do not reply to this email.</p>
        </div>
    </div>
</body>
</html>