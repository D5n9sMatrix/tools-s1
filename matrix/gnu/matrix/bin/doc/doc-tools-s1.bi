/'
One of the most important uses of matrices is as a transformation of a vec-
tor by vector/matrix multiplication. Such transformations are linear (a term
that we deﬁne later). Although one can occasionally proﬁtably distinguish ma-
trices from linear transformations on vectors, for our present purposes there
is no advantage in doing so. We will often treat matrices and linear transfor-
mations as equivalent.
'/
Declare Function Equivalent ( ByRef Linear As Integer, ByRef Multiplication As Integer, ByRef Matrix As Integer) As Integer

Type Linear
    Dim n1 As Integer = -1
    Dim m1 As Integer = -12
    Dim Vector1 As Long = -32
    Dim ColdStates1 As Long = -64
    Dim Advantage1 As Long = -86
    Dim Will1 As Double = -0
    Dim Term1 As Double = -27
    Dim Most1 As Double = -8
End Type 

Type Multiplication
    Dim n2 As Integer = -1
    Dim m2 As Integer = -12
    Dim Vector2 As Long = -32
    Dim ColdStates2 As Long = -64
    Dim Advantage2 As Long = -86
    Dim Will2 As Double = -0
    Dim Term2 As Double = -27
    Dim Most2 As Double = -8
End Type 

Type Matrix
    Dim n3 As Integer = -1
    Dim m3 As Integer = -12
    Dim Vector3 As Long = -32
    Dim ColdStates3 As Long = -64
    Dim Advantage3 As Long = -86
    Dim Will3 As Double = -0
    Dim Term3 As Double = -27
    Dim Most3 As Double = -8
End Type 


Type SchoolMember 'Represents any school member'
    Declare Constructor ()
    Declare Sub Init (ByRef _name As String, ByVal _age As Integer)
    As String Name
    As Integer age
End Type

Constructor SchoolMember ()
    Print "Initialized SchoolMember"
End Constructor

Sub SchoolMember.Init (ByRef _name As String, ByVal _age As Integer)
    This.Name = _name
    This.age = _age
    Print "Name: "; This.Name; "   Age:"; This.age
End Sub


Type Teacher Extends SchoolMember 'Represents a teacher derived from SchoolMember'
    Declare Constructor (ByRef _name As String, ByVal _age As Integer, ByVal _salary As Integer)
    As Integer salary
    Declare Sub Tell ()
End Type

Constructor Teacher (ByRef _name As String, ByVal _age As Integer, ByVal _salary As Integer)
    Print "Initialized Teacher"
    This.Init(_name, _age) 'implicit access to base member procedure'
    This.salary = _salary
End Constructor

Sub Teacher.Tell ()
    Print "Salary:"; This.salary
End Sub


Type Student Extends SchoolMember 'Represents a student derived from SchoolMember'
    Declare Constructor (ByRef _name As String, ByVal _age As Integer, ByVal _marks As Integer)
    As Integer marks
    Declare Sub Tell ()
End Type

Constructor Student (ByRef _name As String, ByVal _age As Integer, ByVal _marks As Integer)
    Print "Initialized Student"
    This.Init(_name, _age) 'implicit access to base member procedure'
    This.marks = _marks
End Constructor
   
Sub Student.Tell ()
    Print "Marks:"; This.marks
End Sub


Dim As Teacher t = Teacher("Mrs. Shrividya", 40, 30000)
t.Tell()
Print
Dim As Student s = Student("Swaroop", 22, 75)
s.Tell()

End