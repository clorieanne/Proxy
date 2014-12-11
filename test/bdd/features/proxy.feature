Feature:  Instantiating a huge object
		As a customer, I want to create an instantiation of a huge object

		Scenario: Instantiation of a huge object
		Given I have a proxy
		When I run the program
		Then it will generate the output

		|Created new object 																		 |
		|Count of references =  1																	 |
		|Using cached object 																		 |
		|Count of references =  2 																	 |
		|Using cached object 																		 |
		|Count of references =  3  																	 |
		|Called sort method with args: 																 |
		|[('self', <__main__.Proxy object at 0x7f235c610f90>), ('reverse', True)] 					 |
		|Deleting proxy2 																			 |
		|Deleted object. Count of objects =  2  													 |
		|The other objects are deleted upon program termination 								     |
		|Deleted object. Count of objects = 1    													 |
		|Number of reference_count is 0. Deleting cached object...									 |
		|Deleted object. Count of objects = 0 														 |