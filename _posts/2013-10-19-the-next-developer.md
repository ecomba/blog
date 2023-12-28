---
layout: post
title: Writing for the next developer
tags: mentoring teaching makers
---
The other day I was going through some code with [Evgeny](https://twitter.com/shadchnev) and we had a discussion about the *[cleanness](http://stackoverflow.com/questions/954570/definition-of-clean-code)* of it. The code in question was by no means wrong or anything, but it *felt* strange.

When you spend years in a profession you have an intuition about what can be done better and what feels wrong (*we usually call this [code smells](https://en.wikipedia.org/wiki/Code_smell)*).

Anyhow, let's go back to the code in question, shall we?

Imagine you have a piece of code that allows a person to rent a bike from a docking station (*in London we call these things [Boris Bikes](https://en.wikipedia.org/wiki/Barclays_Cycle_Hire)*). The docking station would look something like this:

    class DockingStation
      def rent(bike)
        # something interesting happens here to return a bike
      end
    end  
    
Looking closer at that piece of code we notice that the caller will have to know about the existance of a given bike inside that station for him to actually be able to rent the bike. Now that we have decided for this interface we have to provide a means for the caller to at least see the bikes in the docking station:

    class DockingStation
      def available_bikes
        # return collection of the bikes
        # in the station
      end
    end  

If you look at this from the point of view of a real life scenario, a person wanting to rent a bike will most definitely *choose* his bike from the ones he can see on the station.

Also, if you look at this problem from the point of view that a bike is stored in a database and will have to be pulled from the database in order for it to be rented it might look as it is perfectly OK.

So far so good... **What's my problem with this code then?**

The issue I have with this approach is the amount of *knowledge* the caller has to have about the inner representation of the docking station in order to rent *a bike* from a docking station.

Most codebases are not build around the notion of the [user experience](https://en.wikipedia.org/wiki/User_experience_design) the next developer will have with the code we produce. How easy will it be to use? How much will we have to read in order to understand how to use this code? Will it make us happy?

I spend a lot of time thinking in those terms when I am coding, I am not only solving a problem, I am making conscious choices about how my code will be used and what you can expect from it.

Let's look a a different approach to this problem; *renting a bike from a docking station*. What the caller to the docking station ultimately wants to do is *renting a bike*. He doesn't want to deal with any specifics of the docking station, it's not his responsiblilty:

    class DockingStation
      def rent_bike
        # do something to return an available bike
      end
    end
    
Here we have decided to include what was the argument to the method into the methods signature. 

**What have we achived here?**

First of all we don't need to pass in an argument to the method anymore, which makes the code simpler to use. 

Secondly, by including what was the arguments name in the previous example in the method signature, we have now a method that [reveals its intent](http://c2.com/cgi/wiki?IntentionRevealingNames).

And finally the caller no longer has to know *how* things are done inside the docking station; the inner structure is left to be the dockings stations responsability. This actually has many advantages as we can change that inner structure any time without affecting any code that uses our docking station.

But the most important lesson here is that we have made the life of the next developer easier; we have thought about what he will experience and feel while using our docking station. 

**It's your turn!** *Next time you are writing code think about what the next developer will feel and experience when interacting with your code.*
