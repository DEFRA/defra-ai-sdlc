**WIP DO NOT COMMIT THIS FILE TO MAIN**

# Functional/ Integration Testing With and AI 

## Overview

Testing properly with AI is hard - at present it is harder than developing new features.

However, writing tests with AI is easy - it's just those tests might not be valuble.

We have found that automated creation of unit tests without careful consideration leads to brittle, tightly coupled tests that immediately break upon a code change. 
This is not particularly valuble when writing tests.

## Testing Approach

We have taken the approach of "Black Box" Testing with the AI - we present an entire feature and ask the AI to determine it's inputs and output with it 