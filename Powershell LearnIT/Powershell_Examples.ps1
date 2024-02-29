#region DataTypes_&_Variables

    #region General_Datatypes

        # String
        $myString = 'Hello, World!'

        # Integer
        $myInt = 42

        # Double
        $myDouble = 3.14

        # Boolean
        $myBoolean = $true

        # Array
        $myArray = @(1, 2, 3, 4, 5, "string")

        # Hash Table
        $myHashTable = @{
            Name = 'John'
            Age = 30
        }

        # DateTime
        $myDate = Get-Date

        # Object
        $myObject = Get-Process | Select-Object -First 1

        # Null
        $myNullVariable = $null

        # Custom Object
        $myCustomObject = [PSCustomObject]@{
            Name = 'Alice'
            Age = 25
        }

    #endregion General_Datatypes

    #region Variables
        # Variables are set by $
        $myVariable = "First variable"

        # You can assign one variable with the same value as another
        $myVariable = $myOtherVariable

        # You can clearly define global variables that can be used troughout the session like this
        $Global:MyGlobalVariable

        # There are several styles for typing variables (and code for that matter)
        $PascalCase # use this when creating global variables
        $snake_case # don't do this
        $camelCase # use this in regular scripting

        # Bad practices are:
        $nameString # defining the valuetype in the variable, should be self explenatory
        $intAge # also not recommended, focus on the purpose of the variable, not its type
        $x # naming your variables to short, this doesn't say anything about this variable
        $thisIsARealyLongTypedVariableThatIUseForThisScript # this is too long
        $temp # meaningless names like temp is also not reccomended
        $var # also meaningless, var is javascript, not powershell
        $foreach # using reserved keywords, like foreach or if, is also not recommended
        $a1b2_c3_d4 # this is to hard to read, and also breaks the camel case rule
        $upn # too many abbreviations can lead to unreadable code, not recommended

        # Good practices are:
        $userPrincipalName
        $mailboxPermission
        $process 

    #endregion Variables

    #region Strings
        # There are two ways to declare a string
        $mySingleQuotedString = 'Hello World!'
        $myDoubleQuotedString = "Hello World!"

        <# By adding [string], your telling powershell
        explicitly that this is a string #>
        $myStronglyTypedString = [string]"Hello World"

        $myName = "Vincent"
        Write-Host "My name is: $myName"

        # This won't work
        Write-Host 'My name is: $myName'

        # You can add two strings together
        $mySentence = "This is" + "a sentence"

        <# This is not 2, but 11, your adding 2 strings 
        together
        #>
        $myResult = "1" + "1"

        # You can index into a string like this
        $myString = "String"
        $myCharacter = $myString[0] # "S"
        $myCharecter = $myString[3] # "i"

    #endregion Strings

    #region Integers_&_Doubles
        # A Integer (or int) is a numeric value
        $myInt = 439

        # A Double is a numeric value with decibal point
        $myDouble = 493.535

        <# By adding [int] or [double], your telling
        powershell explicitly that this is a int or double#>
        $myStronglyTypedInt = [int]4738
        $myStronglyTypedDouble = [double]494.5943

       <# You can perform mathematical equations using 
       integers and doubles #>
       $myResult = 5 + 5 # 10
       $myResult = 50 - 20 # 30
       $myResult = 5 * 5 # 25
       $myResult = 8 / 2 # 4
       $myResult = 500 % 470 # 30 (difference between 2 ints)

       # The same for double values
       $myResult = 5.35 + 8.22 # 13,57
       $myResult = 9.22 - 4.452 # 4,768

    #endregion Integers_&_Doubles

    #region Booleans
        # Booleans can also be set by $
        $myTrueBool = $true
        $myFalseBool = $false
    #endregion Booleans

    #region Arrays_And_Indexing
        # An array can be set using these methods
        $myFirstArray = @("value1", "value2", "value3") # recommended because of readability
        $mySecondArray = 1,2,3,4,20424
        $myThirdArray = (1, 2, 3, 4, 5)

        # You can also set a empty array in order to add values later using += (opt addition)
        $myEmptyArray = @()

        # You can add values to an array like this:
        $myArray = @()
        $myArray += "value1"
        $myArray += "value2"
        # $myArray is now @("value1", "value2")

        # You can access values in an array by indexing into the array
        $myArray[0] # "value1"
        $myArray[1] # "value2"
        # Notice how you start at 0 for the first value in the array. This is because 0 is also a number.

        # You can change the value in the array by indexing like this
        $myArray[1] = "value3"
        # $myArray is now @("value1", "value3")

        # You can check the length of an array like this
        $length = $myArray.Length
        # $length is now 2

        # You can extract a portion of an array using array slicing:
        $myUnslicedArray = @("value1","value2","value3","value4", "value5")
        $mySlicedArray = $myUnslicedArray[1..3]
        # $mySlicedArray is now @("value2","value3","value4")
        # myUnslicedArray remains the same

        # You can form a array from a string by splitting it
        $mySplittedArray = "value1,value2,value3" -split ","
        # $mySplittedArray is now @("value1","value2","value3")

        # You can iterate over a array like this:
        $colors = @("Red", "Green", "Blue")
        foreach ($item in $colors) {
            Write-Host $item
        }
        # or like this:
        $colors | ForEach-Object { Write-Host $_ }
        # more about foreach and foreach-object later
        
        # You can create a multidimensional array by creating an array of arrays
        $matrix = @(@(1, 2, 3), @(4, 5, 6), @(7, 8, 9))

        # You can have several datatypes in the same array, aldo this is not recommended and considered bad practice
        $myWeirdArray = @(1, "43435", $true, 23.24234)

 
    #endregion Arrays_And_Indexing

    #region Hashtables
        # You can declare a hashtable like this:
        $person = @{
            FirstName = "John"
            LastName = "Doe"
            Age = 30
            City = "New York"
            #key = #value
        }

        # Then you can access the values in the keys like this
        Write-Host "First Name: $($person.FirstName)"
        Write-Host "Last Name: $($person.LastName)"

        # Or like this:
        $firstName = $person["FirstName"]
        $lastName = $person["LastName"]

        # You can change the values like this:
        $person.Department = "IT"
        $person.Age = 31

        # You can add a key to a existing hashtable like this:
        $person["Department"] = "IT"

        # You can remove a key like this:
        $person.Remove("City")

        # You can check the amount of key value pairs like this:
        $count = $person.Count

        # You can iterate over each key in a hasthable with foreach
        foreach ($key in $person.Keys) {
            $value = $person[$key]
            Write-Host "$value"
        }
        # More about foreach later
        
        # You can check if a hashtable contains a specific key like this:
        ($person.ContainsKey("Age")) # True
        ($person.ContainsKey("Shoesize")) # False

        # You can embed different value types in a hashtable:
        $mixedData = @{
            Name = "John"
            Age = 30
            IsActive = $true
            Attributes = @("Friendly", "Hardworking")
        }

        # You can even embed hashtables in hashtables:
        $organization = @{
            Employees = @{
                JohnDoe = @{
                    Age = 30
                    Department = "IT"
                }
                JaneSmith = @{
                    Age = 25
                    Department = "HR"
                }
            }
            Departments = @( "IT", "HR", "Finance" )
        }

    #endregion Hashtables

    #region Custom_Objects
        <# A object consists of 2 things, properties and behavior. Properties are things like
        color, size, age, distance etc.. Behavior is stuff like walking, driving, speaking etc.
        
        Powershell is at its core object orientated, because the .NET framework is object orientated. But powershell
        is designed in such a way that you will not notice that, and it feels more like functional programming
        instead. But you do still encounter (custom) objects in powershell, so it is good to have a basic
        understanding on what a object actually is. It is also possible to apply object orientated principals
        in powershell, but at that point people often switch to languages like C# instead.
        #>

        # You can easily create a custom object like this:
        $person = [PSCustomObject]@{
            Name = "John Doe"
            Age = 30
            City = "New York"
        }
        # Or like this:
        $book = New-Object PSObject -Property @{
            Title = "PowerShell in Action"
            Author = "Bruce Payette"
            Pages = 600
        }
        # This is actually simular to an hashtable, but don't confuse the 2, they are different in some ways.

        # To add a object with behavior (also known as an method), you can do this:
        $rectangle = [PSCustomObject]@{
            Length = 5
            Width = 3
            GetArea = { $this.Length * $this.Width } # This is how you define behavior (methods) in a object in powershell
        }

        # You can access the properties like this:
        $Length = $rectangle.Length
        $Width = $rectangle.Width
        # And the behavior like this:
        $area = $rectangle.GetArea.Invoke()

        # You can add extra properties and values to an already existing object
        $car = [PSCustomObject]@{}
        $car | Add-Member -MemberType NoteProperty -Name "Make" -Value "Toyota"
        $car | Add-Member -MemberType NoteProperty -Name "Model" -Value "Camry"

        # You can access the properties like this:
        Write-Host "Make: $($car.Make), Model: $($car.Model)"

        <# Here is an actual class in powershell. A class acts as an blueprint for an object, before we where
        defining objects using the PSCustomObject  class. This class allows for easy creation of objects. But if you
        truely want to design your own objects with actual behavior. Your better of designing a class instead.
        #>

        # Define a class with properties and a method
        class Employee {
            # your list of properties in your class
            [string]$FirstName
            [string]$LastName
            [int]$Age
            [string]$Department

            Employee ([string]$firstName, [string]$lastName, [int]$age, [string]$department) { # this is a constructor, used to create a new instance of your class
                $this.FirstName = $firstName
                $this.LastName = $lastName
                $this.Age = $age
                $this.Department = $department
            }

            [string] GetFullName() { # this is how you properly define a method
                return "$($this.FirstName) $($this.LastName)"
            }
        }

        # Create an instance of the Employee class
        $employee1 = [Employee]::new("John", "Doe", 30, "IT")

    #endregion Custom_Objects

    #region null
        <# 
            Null has always been a bit weird in programming (and powershell). Because it represents nothing, but at the same time is something. So
            something representing nothing by being something. Null is not the same as 0, because 0 is an actual integer representing the number
            0, whilst null is a data type on its own representing nothing.
        #>

        # This is how you assign the valuetype $null:
        $myNull = $null
        # Unlinke strings, ints and booleans, the datatype $null only knows one state: nothing.

        # If you try to write-host null, you get nothing:
        Write-Host $null
        # In the console you will see an empty space

        # You can (and should) check if your variable is null if this is possible:
        if ($myVariable -eq $null) {
            Write-Host "Variable is null."
        }
        # Another way to do this:
        $someObject = $null
        if ($someObject.IsNull()) {
            Write-Host "Object is null."
        }

        # You can remove a variable and set it to $null using this:
        $variableToRemove = "value1"
        Remove-Variable -Name variableToRemove
        # $variableToRemove is now $null

    #endregion null

#endregion DataTypes_&_Variables

#region Operators
    #region Arithmetic_Operators
        <#
        PowerShell arithmetic operators are used to calculate numeric values. These include:
        
        | Operator | Name            | Description                                      |
        |----------|-----------------|--------------------------------------------------|
        | +        | Addition        | Adds numbers, concatenates strings, and arrays.  |
        | -        | Subtraction     | Subtracts or negates numbers.                    |
        | *        | Multiplication  | Multiplies numbers or copies strings and arrays. |
        | /        | Division        | Divides numbers.                                 |
        | %        | Modulo          | Returns the remainder of a division operation.   |     
        #>

        $sum = 5 + 3
        $sum = 424.33 + 323.313
        $sumOfStrings = "my sentence " + "is complete!"

        $difference = 8 - 3
        $difference = 8.53 - 3.232
        
        $product = 4 * 6
        $product = 4.34 * 6.2882

        $quotient = 20 / 4
        $quotient = 20.24 / 4.555

        $remainder = 10 % 3
        $remainder = 10.242 % 3.244
        # The % sign is in some cases used as alias for foreach-object. Don't confuse the 2, they are used in different scenarios

    #endregion Arithmetic_Operators

    #region Assignment_Operators
        <#
        Assignment operators can be used to assign, change, or append values to variables. These 
        operators are a shorter syntax for assigning the result of an arithmetic operator. The 
        general syntax of the assignment operators is: <Variable> <Assignment Operator> <Value>.

        | Operator | Name                               | Description                                   |
        |----------|------------------------------------|-----------------------------------------------|
        | =        | Assignment                         | `$x = 3` assigns value 3 to variable x.       |
        | +=       | Addition Compound Assignment       | `$x += 3` is short for `$x = $x + 3`.         |
        | -=       | Subtraction Compound Assignment    | `$x -= 3` is short for `$x = $x - 3`.         |
        | *=       | Multiplication Compound Assignment | `$x *= 3` is short for `$x = $x * 3`.         |
        | /=       | Division Compound Assignment       | `$x /= 3` is short for `$x = $x / 3`.         |
        | %=       | Modulo Compound Assignment         | `$x %= 3` is short for `$x = $x % 3`.         |

        #>

        $myVariable = 10
        $myVariable = "this text"
        $myVariable = $false

        $sum = 5
        $sum += 3
        # $sum now holds the value 8

        $difference = 8
        $difference -= 3
        # $difference now holds the value 5

        $product = 4
        $product *= 6
        # $product now holds the value 24

        $quotient = 20
        $quotient /= 4
        # $quotient now holds the value 5

        $remainder = 10
        $remainder %= 3
        # $remainder now holds the value 1

    #endregion Assignment_Operators

    #region Unary_Operators
        <#
        Unary operators increase or decrease the value of a variable by 1.

        | Operator | Name      | Description                        |
        |----------|-----------|------------------------------------|
        | ++       | Increment | `$x++` is short for `$x = $x + 1`. |
        | --       | Decrement | `$x--` is short for `$x = $x - 1`. |

        #>

        $counter = 0
        $counter++
        $counter++
        $counter++
        # $counter now holds the value 3

        $counter = 10
        $counter--
        $counter--
        $counter--
        # $counter now holds the value 7
    
    #endregion Unary_Operators

    #region Equality_Comparison_Operators
        <#
        Equality Comparison Operators
        Equality operators in PowerShell are binary operators that compare two integer 
        or string values that return True if the operator condition is met, otherwise False.

        | Operator | Name                     | Description                                             |
        |----------|--------------------------|---------------------------------------------------------|
        | -eq      | Equal                    | `$x -eq $y` is True if x and y are equal.               |
        | -ne      | Not Equal                | `$x -ne $y` is True if x and y are not equal.           |
        | -gt      | Greater Than             | `$x -gt $y` is True if x is greater than y.             |
        | -lt      | Less Than                | `$x -lt $y` is True if x is less than y.                |
        | -ge      | Greater Than or Equal to | `$x -ge $y` is True if x is greater than or equal to y. |
        | -le      | Less Than or Equal to    | `$x -le $y` is True if x is less than or equal to y.    |

        #>

        # -eq examples:
        $num1 = 5
        $num2 = 5
        $result = $num1 -eq $num2
        # $result now holds the value $true

        $num1 = 6
        $num2 = 5
        $result = $num1 -eq $num2
        # $result now holds the value $false

        $value1 = "test"
        $value2 = "test"
        $result = $num1 -eq $num2
        # $result now holds the value $true

        $value1 = "test"
        $value2 = "nottest"
        $result = $num1 -eq $num2
        # $result now holds the value $false

        # -ne examples:
        $num1 = 5
        $num2 = 5
        $result = $num1 -ne $num2
        # $result now holds the value $false

        $num1 = 6
        $num2 = 5
        $result = $num1 -ne $num2
        # $result now holds the value $true
        
        $value1 = "Hello"
        $value2 = "World"
        $result = $value1 -ne $value2
        # $result now holds the value $true

        $value1 = "Hello"
        $value2 = "Hello"
        $result = $value1 -ne $value2
        # $result now holds the value $false

        # -gt examples:
        $num3 = 10
        $num4 = 5
        $result = $num3 -gt $num4
        # $result now holds the value $true

        $num3 = 5
        $num4 = 10
        $result = $num3 -gt $num4
        # $result now holds the value $false

        # -lt examples:
        $num7 = 3
        $num8 = 7
        $result = $num7 -lt $num8
        # $result now holds the value $true
        
        $num7 = 7
        $num8 = 3
        $result = $num7 -lt $num8
        # $result now holds the value $false

        # -ge examples:
        $num5 = 8
        $num6 = 8
        $result = $num5 -ge $num6
        # $result now holds the value $true

        $num5 = 8
        $num6 = 4
        $result = $num5 -ge $num6
        # $result now holds the value $true

        $num5 = 8
        $num6 = 12
        $result = $num5 -ge $num6
        # $result now holds the value $false

        # -le examples:
        $num9 = 10
        $num10 = 10
        $result = $num9 -le $num10
        # $result now holds the value $true

        $num9 = 10
        $num10 = 15
        $result = $num9 -le $num10
        # $result now holds the value $true

        $num9 = 15
        $num10 = 10
        $result = $num9 -le $num10
        # $result now holds the value $false

    #endregion Equality_Comparison_Operators

    #region Logical_Operators
        <#
        Logical operators allow us to combine multiple operator expressions and statements 
        into complex conditionals.  They operate on boolean values and return boolean values.

        | Operator | Name  | Description                                                   |
        |----------|-------|---------------------------------------------------------------|
        | -and     | And   | `$x -and $y` is True only if $x and $y are both True.         |
        | -or      | Or    | `$x -or $y` is True if either $x or $y is True.               |
        | -xor     | Xor   | `$x -xor $y` is True if only, but not both, $x or $y is True. |
        | ! or -not | Not  | `!$x` is True when $x is False and False when $x is True.     |

        #>

        $condition1 = $true
        $condition2 = $false
        $result = $condition1 -and $condition2
        # $result now holds the value $false

        $condition3 = $true
        $condition4 = $false
        $result = $condition3 -or $condition4
        # $result now holds the value $true

        $condition5 = $true
        $result = -not $condition5
        # $result now holds the value $false, the opposite of $condition5

        $condition6 = $true
        $condition7 = $true
        $result = $condition6 -xor $condition7
        # $result now holds the value $false
        
        $condition8 = $true
        $condition9 = $false
        $result = ($condition8 -and $condition9) -or (-not $condition8)
        # $result now holds the value $true
    #endregion Logical_Operators

#endregion Operators

#region Statements
    #region if_else_elseif_switch
        <# 
        If statements are used to execute a block of code if a condition is true. If the condition is false, another block of code 
        can be executed. The else statement is used to execute a block of code if the condition is false. The elseif statement is used
        to execute a block of code if the previous conditions are false.
        #>
        $num1 = 5
        $num2 = 5
        if ($num1 -eq $num2) {
            Write-Host "The numbers are equal"
        } else {
            Write-Host "The numbers are not equal"
        }

        $num3 = 10
        $num4 = 5
        if ($num3 -gt $num4) {
            Write-Host "The first number is greater than the second number"
        } else {
            Write-Host "The first number is not greater than the second number"
        }

        $num7 = 3
        $num8 = 7
        if ($num7 -lt $num8) {
            Write-Host "The first number is less than the second number"
        } elseif ($num7 -eq $num8) {
            Write-Host "The first number is equal to the second number"
        } else {
            Write-Host "The first number is greater than the second number"
        }

        <#
        Switch statements are used to execute a block of code depending on the value of a variable. The switch statement is a
        more elegant way to write a series of if-elseif-else statements. The switch statement is used to select one of many
        blocks of code to be executed.
        #>
        $color = "Red"
        switch ($color) {
            "Red" {
                Write-Host "The color is red"
            }
            "Green" {
                Write-Host "The color is green"
            }
            "Blue" {
                Write-Host "The color is blue"
            }
            Default {
                Write-Host "The color is not red, green or blue"
            }
        }
    #endregion if_else_elseif_switch

    #region for_&_foreach
        <#
        For loops are used to execute a block of code a specified number of times. The for loop is used when you know in advance
        how many times the code in the codeblock should run. The foreach loop is used to execute a block of code for each element in an array.
        #>
        for ($i = 0; $i -lt 5; $i++) {
            Write-Host "The value of i is: $i"
        }

        $colors = @("Red", "Green", "Blue")
        foreach ($color in $colors) {
            Write-Host "The color is: $color"
        }

        $counter = 0
        for ($i = 0; $i -lt 5; $i++) {
            $counter++
        }
        # $counter now holds the value 5
    #endregion for_&_foreach

    #region while_&_do-while
        <#
        While loops are used to execute a block of code as long as a specified condition is true. The do-while loop is used to execute a block of code at 
        least once, and then repeatedly execute the block of code as long as a specified condition is true.
        #>
        $i = 0
        while ($i -lt 5) {
            Write-Host "The value of i is: $i"
            $i++
        }

        $i = 0
        do {
            Write-Host "The value of i is: $i"
            $i++
        } while ($i -lt 5)
    #endregion while_&_do-while

    #region break_&_continue
        <#
        The break statement is used to exit a loop prematurely. 
        The continue statement is used to skip the current iteration of a loop and continue with the next iteration.
        #>
        for ($i = 0; $i -lt 5; $i++) {
            if ($i -eq 3) {
                break
            }
            Write-Host "The value of i is: $i"
        }

        for ($i = 0; $i -lt 5; $i++) {
            if ($i -eq 3) {
                continue
            }
            Write-Host "The value of i is: $i"
        }
    #endregion break_&_continue

    #region return_throw_&_exit
        <#
        The return statement is used to exit a function and return a value to the caller.
        The throw statement is used to throw an exception. Be carefull with repeated exception throwing, this can lead to a stack overflow. This is because
        a exception is quite heavy on the system, and if you keep throwing exceptions, the stack will fill up and the system will crash.
        The exit statement is used to exit the current session. This is often used when you want to stop the script from running entirely.
        #>
        function MyFunction {
            return "Hello, World!"
        }

        try {
            throw "An error occurred"
        } catch {
            Write-Host "An error occurred: $_"
        }

        exit # This just exits the current session

    #region try_catch_finally
        <#
        The try block is used to define a block of code that may throw an exception. The catch block is used to define a block of code to be executed if an exception is thrown in 
        the try block. The finally block is used to define a block of code to be executed after the try block and catch block, regardless of whether an exception is thrown or not.
        #>
        try {
            $result = 10 / 2
        } catch {
            Write-Host "An error occurred: $_"
        }

        try {
            $result = 10 / 0
        } catch {
            # This will catch the exception, and only return the exception message instead of the entire exception.
            Write-Host "An error occurred, message: " $_.Exception.Message 
        }

        try {
            $result = 10 / 0
        } catch {
            Write-Host "An error occurred: $_"
        } finally {
            Write-Host "The try-catch block has finished"
        }
    #endregion try_catch_finally
#endregion Statements

#region Cmdlets_vs_Functions
    #region functions
        <#
        Functions are used to define a block of code that can be executed multiple times at a later time. Functions are used to organize code into 
        smaller, more manageable pieces. Functions are also used to make code more reusable. Functions are defined using the function keyword, 
        followed by the name of the function, and a block of code to be executed.
        #>
        function MyFunction {
            Write-Host "Hello, World!"
        }

        function Add-Numbers {
            param (
                [int]$num1,
                [int]$num2
            )
            $result = $num1 + $num2
            return $result
        }

        function Get-User {
            param (
                [string]$username
            )
            $user = Get-ADUser -Identity $username
            return $user
        }
    #endregion functions

    #region cmdlets
        <#
        Cmdlets are used to execute a specific action in PowerShell. Cmdlets are used to perform a wide variety of tasks, such as managing the file system, 
        managing the registry, managing services, managing processes, managing the network, managing the operating system, managing the active directory, 
        managing the SQL server, managing the exchange server, and much more. Cmdlets are used to perform tasks that are not possible with functions alone.
        #>

        # Get-Process: Retrieves a list of currently running processes on the system.
        Get-Process

        # Get-Service: Gets the status of services on a computer, including their names, display names, and status.
        Get-Service

        # Get-EventLog: Retrieves events from the event log on a local or remote computer.
        Get-EventLog -LogName System

        # Get-Item: Gets an item from a provider namespace, such as the file system.
        Get-Item -Path C:\Example\File.txt

        # Set-Content: Writes new content to a file, overwriting the existing content.
        Set-Content -Path C:\Example\NewFile.txt -Value "Hello, PowerShell!"

        # New-Item: Creates a new item, such as a file or directory.
        New-Item -ItemType Directory -Path C:\Example\NewFolder

        # Remove-Item: Deletes an item (file or directory) from the file system.
        Remove-Item -Path C:\Example\ToDelete.txt

        # Get-ChildItem: Gets the items and child items (files and subdirectories) in a specified location.
        Get-ChildItem -Path C:\Example

        # Get-Help: Displays information about PowerShell commands and concepts, providing help documentation.
        Get-Help Get-Process

        # Start-Service: Starts one or more stopped services.
        Start-Service -Name "ServiceName"

        # Stop-Service: Stops one or more running services.
        Stop-Service -Name "ServiceName"

        # Get-Command: Retrieves all commands (cmdlets, functions, workflows, aliases) available in PowerShell.
        Get-Command

        # Invoke-WebRequest: Performs HTTP requests and retrieves the content from a specified web address.
        Invoke-WebRequest -Uri "https://www.example.com"

        # Test-Connection: Tests network connectivity by sending ICMP echo request packets (ping).
        Test-Connection -ComputerName "www.google.com"

        # Get-Date: Gets the current date and time or a specified date and time.
        Get-Date

        # Select-Object: Selects specified properties from the objects in a collection.
        Get-Process | Select-Object -Property Name, CPU, Handles

    #endregion cmdlets

    #region pipelines
        <#
        The pipeline is used to pass the output of one cmdlet to the input of another cmdlet. The pipeline is used to chain multiple cmdlets together to perform a series of tasks. 
        The pipeline is used to make code more readable and more maintainable. The pipeline is used to make code more reusable and more scalable.
        #>

        # This command retrieves a list of currently running processes on the system, and then selects the Name, CPU, and Handles properties from the objects in the collection.
        Get-Process | Select-Object -Property Name, CPU, Handles

        # This command retrieves the content from a specified web address, and then saves the content to a file.
        Invoke-WebRequest -Uri "https://www.example.com" | Set-Content -Path C:\Example\NewFile.txt

        # This command retrieves the items and child items (files and subdirectories) in a specified location, and then selects the Name, Length, and LastWriteTime properties from the objects in the collection.
        Get-ChildItem -Path C:\Example | Select-Object -Property Name, Length, LastWriteTime

        # This command retrieves the status of services on a computer, and then starts one or more stopped services.
        Get-Service | Where-Object { $_.Status -eq "Stopped" } | Start-Service

        # This command retrieves the status of services on a computer, and then stops one or more running services.
        Get-Service | Where-Object { $_.Status -eq "Running" } | Stop-Service

        # This command retrieves the items and child items (files and subdirectories) in a specified location, and then deletes an item (file or directory) from the file system.
        Get-ChildItem -Path C:\Example | Where-Object { $_.Name -eq "ToDelete.txt" } | Remove-Item

        # This command retrieves the items and child items (files and subdirectories) in a specified location, and then creates a new item (file or directory).
        Get-ChildItem -Path C:\Example | Where-Object { $_.Name -eq "NewFolder" } | New-Item -ItemType Directory
    #endregion pipelines
#endregion Cmdlets_vs_Functions

#region Modules
    #generate this chapter about powershell modules
    <#
    A module is a collection of cmdlets, functions, workflows, aliases, and providers. A module is used to organize code into smaller, more
    manageable pieces. A module is used to make code more reusable and more scalable. A module is used to make code more readable and more maintainable. A 
    module is used to perform tasks that are not possible with cmdlets and functions alone.
    #>

    # Import-Module: Imports a PowerShell module, making its cmdlets and functions available in the current session.
    Import-Module -Name "ModuleName"

    # Get-Module -ListAvailable: Retrieves a list of all available modules on the system.
    Get-Module -ListAvailable

    # Get-Module -Name: Retrieves information about a specific module.
    Get-Module -Name "ModuleName"

    # Remove-Module: Removes a loaded module from the current session.
    Remove-Module -Name "ModuleName"

    # Install-Module: Installs a PowerShell module from an online repository.
    Install-Module -Name "ModuleName"

    # Update-Module: Updates a previously installed module to the latest version.
    Update-Module -Name "ModuleName"

    # Publish-Module: Publishes a PowerShell module to an online repository.
    Publish-Module -Name "ModuleName"

    # Uninstall-Module: Uninstalls a PowerShell module from the system.
    Uninstall-Module -Name "ModuleName"

    # New-ModuleManifest: Creates a new module manifest file (.psd1) for a PowerShell module.
    New-ModuleManifest -Path "C:\Example\NewModule.psd1"

#endregion Modules
