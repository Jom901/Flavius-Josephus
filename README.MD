# Flavius Josephus Problem

People are standing in a circle waiting to be executed. Counting begins at a specified point in the circle and proceeds around the circle in a specified direction. After a specified number of people are skipped, the next person is executed. The procedure is repeated with the remaining people, starting with the next person, going in the same direction and skipping the same number of people, until only one person remains, and is freed. (Thanks [wikipedia](https://en.wikipedia.org/wiki/Josephus_problem))

Given an input format of n,m
```sh
10,3
```
Generate a list from 0 to n and eliminate the m-th number in the list. Print each number in the order upon which it was removed.

# Solution Specifications

I managed to create my own take on solving the problem. Instead of an iterative approach, I created a recursive function in Ruby. I'm not quite sure if it'll solve every input, but I'm quite confident that it does. I believe it solves the problem in O(n).

## Usage

Enter your terminal, find the directory it is currently in and run

```sh
~$ ruby flavius.rb
```
It will then ask for input of type n,m and print out the solution for your input.

```sh
~$ ruby flavius.rb
Input: 10,3
2 5 8 1 6 0 7 4 9 3
```
