ProjectName=$(basename "$PWD")

mkdir $ProjectName

cd $ProjectName

dotnet new sln

dotnet new mvc
dotnet sln add "${ProjectName}.csproj"

dotnet add package Microsoft.EntityFrameworkCore.Tools 
dotnet add package Microsoft.EntityFrameworkCore.SqlServer

cd Models

touch Product.cs 

echo "
namespace ${ProjectName}.Models
{
    public class Product
    {
        public int Id {get; set;}
    }
}
" >> Product.cs

touch Category.cs 

echo "
namespace ${ProjectName}.Models
{
    public class Category
    {
        public int Id {get; set;}
        public string Name {get; set;} = null!;
        public string Description {get; set;} = null!;
    }
}
" >> Category.cs 
