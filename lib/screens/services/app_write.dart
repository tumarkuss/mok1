import 'dart:async';

import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';

Client client = Client()
    .setEndpoint('https://localhost/v1')  // Your Appwrite Endpoint
    .setProject('5e8cf4f46b5e8')          // Your project ID
    .setSelfSigned(status: true);         // For self signed certificates, only use for development

Account account = Account(client);

final user = account.create(
    userId: ID.unique(),
    email: 'me@appwrite.io',
    password: 'password',
    name: 'My Name'
);

// Subscribe to files channel
final realtime = Realtime(client);
final subscription = realtime.subscribe(['files']);

StreamListen(response) async {
    if (response.events.contains('buckets.*.files.*.create')) {
        // Log when a new file is uploaded
        print(response.payload);
    };}
