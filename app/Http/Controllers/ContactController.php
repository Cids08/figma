<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\ContactFormMail;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{
     // Show the contact page
     public function index()
     {
         return view('contact'); // Ensure "contact.blade.php" exists in resources/views
     }
 
     // Handle the form submission
     public function store(Request $request)
     {
        // Validate form data
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'subject' => 'required|string|max:255',
            'message' => 'required|string',
        ]);
        
        // Send email
        Mail::to('113330@deped.gov.ph')->send(new ContactFormMail($validated));
        
        // Return response
        return back()->with('success', 'Thank you for your message. We will contact you soon!');
    }
}