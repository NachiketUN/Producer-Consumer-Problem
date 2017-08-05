# Producer-Consumer-Problem
Erlang solution to the classic Producer-Consumer Problem

### Getting Started

Install Erlang. 

In terminal go into the directory where the files are cloned. Type `erl` to start the Erlang shell. 

Compile all the files - master.erl, buffer.erl, producer.erl, consumer.erl and item.erl. To do so type `c(<filename>).` and press enter.
```
> c(master).
{ok,master}
> c(buffer).
{ok,buffer}
> c(producer).
{ok,producer}
> c(consumer).
{ok,consumer}
> c(item).
{ok,item}

```
To run the program type `master:init().`. The program will ask you to input the number of producers and consumers.
```
> master:init().
Input number of producers : 4
Input number of consumers : 3

```
The program then continues indefinitely. To quit the program press Ctrl + Z.
