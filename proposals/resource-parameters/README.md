# Problem Statement
Typically, (REST) resources are used with query parameters such as /resource?par1=value&par2=value... . How we are going to describe this in the TD for the different interactions such as properties, actions, and events? Static based query parameters are not the problem, however, dynamic based paramers have to be constructed at the time when a client setup the request. 

#Use Case
* function parameters
* OCF if views 
* filtering / selecting of, e.g., JSON or XML-based data (or Yang data)
* ...

#First Ideas
1)  define query parameters in the same way as the inputValue/outputValues and define a new field 'parameters', e.g.,

```
...
"parameters": {"par1" : { "type": "number" },
               "par2" : { "type": "string" }, 
               ...      
              }
...
```
